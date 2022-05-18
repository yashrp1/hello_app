import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hello_app/controllers/registrationcontroller.dart';
import 'package:hello_app/controllers/usercontroller.dart';
import 'package:hello_app/services/Authenication.dart';

class RegistraionScreen extends StatefulWidget {
  const RegistraionScreen({ Key? key }) : super(key: key);

  @override
  State<RegistraionScreen> createState() => _RegistraionScreenState();
}

class _RegistraionScreenState extends State<RegistraionScreen> {
  // final TextEditingController _phonenumbercontroller = TextEditingController();

  //Authentication Instance - PHONE NUMBER
  final AuthService _auth = AuthService();

  //Controllers
  final RegistrationController registrationController = Get.put(RegistrationController());
  final UserController userController = Get.put(UserController());

  


    String? _validatePhoneNumber(String? value) {
    final phoneExp = RegExp(r'^\(\d\d\d\) \d\d\d\-\d\d\d\d$');
    if (!phoneExp.hasMatch(value!)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 61, 58, 61),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(10.0,40.0 , 10.0, 15.0),
                child: Text('Enter your phone number',
                 style: TextStyle(
                  fontSize: 28.0, 
                  color: Colors.white, 
                  fontWeight: FontWeight.bold  
                  ),
                  ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 15.0),
                alignment: Alignment.center,
                child: const Text('HelloApp will send an SMS message to verify your phone number.',
                textAlign: TextAlign.center,
                   style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 16.0,  
                    ),
                    ),
                
              ),
              Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                   const SizedBox(width: 10),
                                   Expanded(
                                    flex: 1,
                                    child: TextFormField(
                                      controller: registrationController.countryCodeController,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: '+91',
                                          iconColor: Colors.black,
                                          border: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(5)),
                                          
                                        ),  
                                      
                                      keyboardType: TextInputType.phone,  
                                      maxLength: 3,
                                      maxLengthEnforcement: MaxLengthEnforcement.none,
                                                  ),
                                  ),
                                  const SizedBox(width: 10,),
                                  Expanded(
                                    flex: 3,
                                    child: TextFormField(
                                      controller: registrationController.phoneNumberController,
                                      restorationId: 'phone_number_field',
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          iconColor: Colors.black,
                                          hintText: 'Phone Number',
                                          border: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(5)),
                                          
                                        ),
                                      keyboardType: TextInputType.phone,  
                                      maxLength: 14,
                                      maxLengthEnforcement: MaxLengthEnforcement.none,
                                      validator: _validatePhoneNumber
                                                  
                                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                
            
            Container(
              
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 60.0),
              child: ElevatedButton(onPressed: () => {
                userController.updateusermobile(registrationController.countryCodeController.text+registrationController.phoneNumberController.text),
                _auth.phoneSignIn(phoneNumber: registrationController.countryCodeController.text+registrationController.phoneNumberController.text, context: context)
              }, 
                child: const Text("NEXT"),
                ),
            )  
            ],
          ),
        ),
      ),
    );
  }
}