import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_app/controllers/logincontroller.dart';

class ChatScreen extends StatelessWidget {
  

    final LoginController loginController = Get.put(LoginController());

   ChatScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Text("Chat Screen"),
    );
  }
}