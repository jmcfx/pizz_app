import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:pizz/core/errors/exceptions.dart';

import '../../models/user_models.dart';

abstract interface class UserAuthDataSource {
  Stream<UserModels> getUserAuthentication();
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<UserModels> signUpWithEmailAndPassword(String email, String password);
}

class UserAuthDataSourceImpl implements UserAuthDataSource {
  //this UserAuth Data Source  depends on firebase Auth and firebaseFirestore...
  final FirebaseAuth _fireBaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  UserAuthDataSourceImpl({
    required FirebaseFirestore firebaseFirestore,
    required FirebaseAuth fireBaseAuth,
  }) : _fireBaseAuth = fireBaseAuth,
       _firebaseFirestore = firebaseFirestore;

  FirebaseAuth? get firebaseAuth => _fireBaseAuth;

  FirebaseFirestore get firebaseFirestore => _firebaseFirestore;

  @override
  Stream<UserModels> getUserAuthentication() {
    //if auth is null...

    //if the auth is not null .....
    return _fireBaseAuth.authStateChanges().asyncExpand((firebaseUser) async* {
      switch (firebaseUser) {
        case null:
          yield* Stream.error(throw AuthenticationException());
        case User(uid: final uid):
          final userDoc = await _firebaseFirestore
              .collection('user')
              .doc(uid)
              .get();

          if (!userDoc.exists || userDoc.data() == null) {
            yield* Stream.error(throw AuthenticationException());
          }
          debugPrint(" ${userDoc.data()} ");
          yield UserModels.fromJson(userDoc.data()!);
      }
    });
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    await _fireBaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<UserModels> signUpWithEmailAndPassword(
    String email,
    String password,
  ) async {
    UserCredential userCredential = await _fireBaseAuth
        .createUserWithEmailAndPassword(email: email, password: password);

    User? firebaseUser = userCredential.user;
    if (firebaseUser == null) {
      throw AuthenticationException();
    }
    return UserModels(
      userId: firebaseUser.uid,
      name: firebaseUser.displayName ?? "",
      email: firebaseUser.email ?? email,
    );
  }
}
