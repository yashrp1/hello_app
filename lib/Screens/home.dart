

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_app/Screens/helloappscreen.dart';
import 'package:hello_app/Screens/welcome_Screen.dart';
import 'package:hello_app/controllers/logincontroller.dart';

class HomeScreen extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());
  HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Obx(()=> loginController.isLoggedin.value ? HelloAppScreen() :  WelcomeScreen());
  }
}