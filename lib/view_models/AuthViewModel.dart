import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore db = FirebaseFirestore.instance;

class AuthServices with ChangeNotifier {
  User get currentUser => _auth.currentUser;

  static const photoUrl =
      'https://firebasestorage.googleapis.com/v0/b/saheb-mobile.appspot.com/o/users%2Fuser.png?alt=media&token=0f61b161-14a4-49ca-af9e-cef6ba8a80ca';

  Future<void> registerUserToDb({
    id,
    name,
    email,
    photo,
    DocumentReference userRef,
  }) async {
    if (userRef.toString().isNotEmpty) {
      await userRef.set({
        "id": id,
        "name": name,
        "email": email,
        "photoUrl": photo,
        "dateOfBirth": null,
        "phone": null,
        "gender": null,
        "newMessagesCount": 0,
        "postsCount": 0,
      });
    } else {
      await userRef.update({
        "id": id,
        "name": name,
        "email": email,
        "photoUrl": photo,
        "dateOfBirth": null,
        "phone": null,
        "gender": null,
        "newMessagesCount": 0,
        "postsCount": 0,
      });
    }
  }

  Future<bool> _authenticate({
    @required String email,
    @required String password,
    String name,
    @required String actionType,
  }) async {
    try {
      User _user;
      if (actionType == 'register') {
        _user = (await _auth.createUserWithEmailAndPassword(
                email: email, password: password))
            .user;
        final DocumentReference _userRef =
            db.collection("users").doc(_user.uid);
        await registerUserToDb(
          id: _user.uid,
          name: name,
          email: email,
          photo: photoUrl,
          userRef: _userRef,
        );
        await _user.updateProfile(displayName: name, photoURL: photoUrl);
      } else {
        _user = (await _auth.signInWithEmailAndPassword(
                email: email, password: password))
            .user;
      }
      notifyListeners();
      final prefs = await SharedPreferences.getInstance();
      final userData = _user.uid;

      prefs.setString('userData', userData);
    } catch (error) {
      throw error;
    }
    return true;
  }

  Future<bool> register({String email, String password, String name}) async {
    return _authenticate(
      email: email,
      password: password,
      name: name,
      actionType: 'register',
    );
  }

  Future<bool> login({String email, String password}) async {
    return _authenticate(
      email: email,
      password: password,
      actionType: 'login',
    );
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    await _auth.signOut();
    notifyListeners();
  }

  Future<void> updateUserPhoto({String photoUrl}) async {
    final User user = _auth.currentUser;
    await user.updateProfile(displayName: user.displayName, photoURL: photoUrl);
  }
}
