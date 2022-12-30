// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:frontend/controllers/facebook_controller.dart';
import 'package:frontend/controllers/login_controller.dart';
import 'package:frontend/controllers/register_controller.dart';
import 'package:frontend/controllers/google_controller.dart';
import 'package:frontend/screens/auth/widgets/input_fields.dart';
import 'package:frontend/screens/auth/widgets/submit_button.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_sign_in/google_sign_in.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  RegisterController registerationController =
  Get.put(RegisterController());

  LoginController loginController = Get.put(LoginController());

  GoogleController googleController = Get.put(GoogleController());

  FacebookController facebookController = Get.put(FacebookController());

  var isLogin = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(36),
          child: Center(
            child: Obx(
                  () => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Text(
                        'WELCOME',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          color: !isLogin.value ? Colors.white : Colors.amber,
                          onPressed: () {
                            isLogin.value = false;
                          },
                          child: Text('Register'),
                        ),
                        MaterialButton(
                          color: isLogin.value ? Colors.white : Colors.amber,
                          onPressed: () {
                            isLogin.value = true;
                          },
                          child: Text('Login'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    isLogin.value ? loginWidget() : registerWidget()
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget registerWidget() {
    return Column(
      children: [
        InputTextFieldWidget(registerationController.usernameController, 'username'),
        SizedBox(
          height: 20,
        ),
        InputTextFieldWidget(registerationController.nameController, 'first name'),
        SizedBox(
          height: 20,
        ),
        InputTextFieldWidget(registerationController.lastNameController, 'last name'),
        SizedBox(
          height: 20,
        ),
        InputTextFieldWidget(
            registerationController.emailController, 'email address'),
        SizedBox(
          height: 20,
        ),
        InputTextFieldWidget(
            registerationController.passwordController, 'password'),
        SizedBox(
          height: 20,
        ),
        InputTextFieldWidget(
            registerationController.passwordConfirmController, 'password'),
        SizedBox(
          height: 20,
        ),
        SubmitButton(
          onPressed: () => registerationController.registerWithEmail(),
          title: 'Register',
        )
      ],
    );
  }

  Widget loginWidget() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        InputTextFieldWidget(loginController.emailController, 'Username'),
        SizedBox(
          height: 20,
        ),
        InputTextFieldWidget(loginController.passwordController, 'Password'),
        SizedBox(
          height: 20,
        ),
        SubmitButton(
          onPressed: () => loginController.loginWithUsername(),
          title: 'Login',
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black,
            minimumSize: Size(double.infinity, 50),
          ),
          icon: FaIcon(
            FontAwesomeIcons.google,
            color: Colors.red,
          ),
          label: Text('Sign Up with Google'),
          onPressed: () => signInGoogle(),
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black,
            minimumSize: Size(double.infinity, 50),
          ),
          icon: FaIcon(
            FontAwesomeIcons.facebook,
            color: Colors.blue,
          ),
          label: Text('Sign Up with Facebook'),
          onPressed: () => signInFacebook(),
        ),
      ],
    );
  }

  Future signInGoogle() async{
    try {
      final googleSignIn = GoogleSignIn();
      final result = await googleSignIn.signIn();
      final ggAuth = await result?.authentication;
      await googleController.login(ggAuth?.accessToken);
    } catch (error) {
      print(error);
    }
  }

  Future signInFacebook() async{
    final LoginResult result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      final AccessToken accessToken = result.accessToken!;
      await facebookController.login(accessToken.toJson()["token"]);
    } else {
      print(result.status);
      print(result.message);
    }
  }
}