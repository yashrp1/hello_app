import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_app/controllers/logincontroller.dart';

class ChatScreen extends StatelessWidget {
  

    final LoginController loginController = Get.put(LoginController());

   ChatScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    // ignore: avoid_unnecessary_containers
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xffBBDEFB), borderRadius: BorderRadius.circular(20)),
      child: IntrinsicHeight(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffE3F2FD)),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 16, bottom: 10, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Find the best\nproduct for you",
                    style: TextStyle(
                        color: Color(0xff465bd8),
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    width: double.infinity,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Color(0xff757575),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Search what you need",
                          style: TextStyle(color: Color(0xff757575)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}