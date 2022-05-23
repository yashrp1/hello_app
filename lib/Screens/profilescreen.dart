

import 'package:flutter/material.dart';
import 'package:hello_app/widgets/circle_image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color.fromARGB(255, 69, 66, 69),
      automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Column(
            children: const [
              Center(child: CircleImage(icon: Icon(Icons.camera_alt_outlined,color: Colors.white,),)),
              SizedBox(height: 15,),
              // Divider(height: 1,color: Color.fromARGB(115, 54, 51, 51),),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Name'),
                trailing: Icon(Icons.edit),
              ),
              Divider(height: 1,color: Color.fromARGB(115, 54, 51, 51),),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About'),
                trailing: Icon(Icons.edit),
              ),
              Divider(height: 1,color: Color.fromARGB(115, 54, 51, 51),),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
                trailing: Icon(Icons.edit),
              ),
              Divider(height: 1,color: Color.fromARGB(115, 54, 51, 51),),
            ],
          ),
          )
      ),
    );
    
  }
}