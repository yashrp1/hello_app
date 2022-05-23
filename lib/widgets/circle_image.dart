import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String image;
  final Icon icon;

  const CircleImage({ Key? key, this.image = 'https://cdn.iconscout.com/icon/free/png-256/avatar-370-456322.png', required this.icon }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16.0),
                      height: 150.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(image),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black26, width: 1.0),
                      ),
                    ),
                    Container(
                      height: 150.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Colors.black87,
                            Colors.black45,
                            Colors.transparent,
                          ],
                          stops: [0, 0.25, 1],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black45, width: 1.0),
                      ),
                    ),
                    Positioned(
                      
                      right: 20,
                      bottom: 0,
                      child: SizedBox(
                        height: 60.0,
                        child: Container(
                          height: 45.0,
                          width: 45.0,
                          // color: Colors.green,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(255, 44, 49, 47) ),
                          child: icon)
                      ),
                    ),
                  ],
                );
  }
}