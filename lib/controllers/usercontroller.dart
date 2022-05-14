
import 'package:get/get.dart';
import 'package:hello_app/controllers/logincontroller.dart';
import 'package:hello_app/models/user.dart';

class UserController extends GetxController{
  
  // final userpreference = GetStorage();   // instance of getStorage class

  final users = UserData().obs;
  var uid = ''.obs;
  var mobileno = ''.obs;

  updateuserid(String userid){
    final LoginController loginController = Get.put(LoginController());
    uid.value = userid;
    loginController.loginstatuschange();
  }

  updateusermobile(String mobno){
    mobileno.value = mobno;
  }

  updateUserData(String name, String mobile, String profile_picture) {
    users().name = name;
    users().mobileNo = mobile;
    users().profilePicture = profile_picture;
    users().uid = uid.string;
  }

  @override
  void onInit() {
    super.onInit();
   
  }

  @override
  void onClose() {
    super.onClose();
  }          
  

 

  
}