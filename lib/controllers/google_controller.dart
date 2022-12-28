import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:google_sign_in/google_sign_in.dart';

import '../utils/api_endpoints.dart';

class GoogleController{
  static final _googleSignIn = GoogleSignIn(
    clientId: "821839836006-d6cbjccujdmc366rcqot5c39esdom3uu.apps.googleusercontent.com"
  );

  static Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();
}
