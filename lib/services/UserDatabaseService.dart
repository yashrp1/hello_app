
import 'package:cloud_firestore/cloud_firestore.dart';


class UserDatabaseService {

  final String uid;
  

  final CollectionReference userCollection = FirebaseFirestore.instance.collection('users');
  final CollectionReference mobileCollection = FirebaseFirestore.instance.collection('mobiles');

  UserDatabaseService(this.uid);


  Future updateUserData(String name, String mobileNo , String profilePicture) async {
    updatemobileData(uid, mobileNo);
    return await userCollection.doc(uid).set({
      'mobile': mobileNo,
      'name': name,
      'profile_picture': profilePicture,
    });
  }

   Future updatemobileData(String uid, String mobileNo) async {
    return await mobileCollection.doc(mobileNo).set({
      'uid': uid,
    });
  }

  

}