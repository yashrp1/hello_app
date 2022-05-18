
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_app/controllers/usercontroller.dart';
import 'package:hello_app/services/UserDatabaseService.dart';

class ProfileSetupcontroller extends GetxController{
  UserController userController = Get.put(UserController());



  late TextEditingController namecontroller;
  var profilePicture = "https://us.123rf.com/450wm/apoev/apoev2107/apoev210700049/171659475-stock-vector-default-avatar-photo-placeholder-gray-profile-picture-icon-man-in-t-shirt.jpg?ver=6";

  Future createUserprofile(String name, String profilePicture) async {
   return await UserDatabaseService(userController.uid.string).updateUserData(name, userController.mobileno.string, profilePicture);
  }
  

  @override
  void onInit() {
    super.onInit();
    namecontroller = TextEditingController();
  }

  @override
  void onClose() {
    namecontroller.dispose();
    super.onClose();
  }          
  

 

  
}