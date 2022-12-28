import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../utils/api_endpoints.dart';

class RegisterController extends GetxController{
  TextEditingController usernameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController(); //
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController(); //

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> registerWithEmail() async{
    try{
      var headers = {'Content-Type': 'application/json'};
      var url = Uri.parse(
        ApiEndPoints.baseUrl + ApiEndPoints.authEndPoints.registerEmail);
      Map body = {
        'username' : usernameController.text,
        'first_name' : nameController.text,
        'last_name' : lastNameController.text,
        'email' : emailController.text.trim(),
        'password1' : passwordController.text,
        'password2' : passwordConfirmController.text
      };

      http.Response response =
          await http.post(url, body : jsonEncode(body), headers: headers);

      if (response.statusCode == 200){
        final json = jsonDecode(response.body);
        print(json);
      } else{
        throw jsonDecode(response.body)["Message"] ?? "Unknown Error Occurred";
      }

    } catch(e){
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context){
            return SimpleDialog(
              title: const Text('Error'),
              contentPadding: const EdgeInsets.all(20),
              children: [Text(e.toString())],
            );
          });
    }
  }
}