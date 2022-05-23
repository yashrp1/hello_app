import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_app/Screens/helloappscreen.dart';
import 'package:hello_app/controllers/logincontroller.dart';
import 'package:hello_app/controllers/profilesetupcontroller.dart';
import 'package:hello_app/controllers/usercontroller.dart';
import 'package:hello_app/widgets/circle_image.dart';
import 'package:hello_app/widgets/custom_button.dart';
import 'package:hello_app/widgets/textfield.dart';

class ProfileSetupScreen extends StatelessWidget {
  final ProfileSetupcontroller profileSetupcontroller = Get.put(ProfileSetupcontroller());
  
  final UserController userController = Get.put(UserController());


  final LoginController loginController = Get.put(LoginController());

  ProfileSetupScreen({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 61, 58, 61),
        body: Container(
              color: const Color.fromARGB(255, 61, 58, 61),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: 
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 10),
                      child: const CircleImage(image: 'https://us.123rf.com/450wm/apoev/apoev2107/apoev210700049/171659475-stock-vector-default-avatar-photo-placeholder-gray-profile-picture-icon-man-in-t-shirt.jpg?ver=6',
                      icon: Icon(Icons.add,color: Colors.white,),))
                    ),
                  SliverToBoxAdapter(
                    child: CustomTextField(textEditingController: profileSetupcontroller.namecontroller),
                  ),
                  SliverToBoxAdapter(
                    child: CustomButton(
                      label: 'CONTINUE', 
                      onTap: () async {
                         await profileSetupcontroller.createUserprofile
                         (profileSetupcontroller.namecontroller.text, profileSetupcontroller.profilePicture );
                          loginController.setloginpreference(userController.uid.value);
                          // ignore: use_build_context_synchronously
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HelloAppScreen()));
                         },
                      ),
                  )
                ],
              ),
            ),
      ),
    );
  }
}