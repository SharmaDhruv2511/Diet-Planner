import 'dart:async';
import 'dart:developer';

import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:bmi_calculator/screens/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  bool isLogin = false;
  User? get user => _user.value;
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.authStateChanges());
    ever(_user, loginRedirect);
  }

  loginRedirect(User? user) {
    Timer(Duration(seconds: isLogin ? 0 : 2), () {
      if (user == null) {
        isLogin = false;
        update();
        Get.offAll(() => const LoginScreen());
      } else {
        isLogin = true;
        update();
        Get.offAll(() => const HomeScreen());
      }
    });
  }

  void signupUser(email, pass) async {
    try {
      isLogin = true;
      update();
      await auth.createUserWithEmailAndPassword(email: email, password: pass);
      successSnackBar("Successfully logged in as ${_user.value!.email}");
    } on FirebaseAuthException catch (e) {
      // Error
      error("Account Creating Error", e);
    }
  }

  void login(email, pass) async {
    try {
      isLogin = true;
      update();
      await auth.signInWithEmailAndPassword(email: email, password: pass);
      successSnackBar("You are logged in as ${_user.value!.displayName}");
    } on FirebaseAuthException catch (e) {
      // Error
      error("Login Failed", e);
    }
  }

  void forgotPass(email) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
      successSnackBar("Reset mail sent successfully. Check mail!");
    } on FirebaseAuthException catch (e) {
      error("Error", e);
    }
  }

  error(String message, _) {
    Get.snackbar(
      "Error",
      "$message\n${_.message}",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.redAccent,
      colorText: Colors.white,
      borderRadius: 10,
      margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
    );
  }

  errorSnackBarNew(String message) {
    Get.snackbar(
      "Error",
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.redAccent,
      colorText: Colors.white,
      borderRadius: 10,
      margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
    );
  }

  successSnackBar(String message) {
    Get.snackbar(
      "Successfully Logged in",
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      borderRadius: 10,
      margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
    );
  }

  void logout() async {
    await auth.signOut();
  }
}
