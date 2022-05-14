
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController{
  

  late TextEditingController phoneNumberController;
  late TextEditingController countryCodeController;


  @override
  void onInit() {
    super.onInit();
    phoneNumberController = TextEditingController();
    countryCodeController = TextEditingController();

  }

  @override
  void onClose() {
    phoneNumberController.dispose();
    countryCodeController.dispose();
    super.onClose();
  }          
  

 

  
}