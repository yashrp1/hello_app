
import 'package:get/get.dart';
import 'package:hello_app/controllers/usercontroller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController{
  final UserController userController = Get.put(UserController());


  var loggedin = true;
  var notLoggedin = false;
  var isLoggedin = false.obs;



  void getloginpreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    
     userController.uid.value = (prefs.getString('userid') ?? '');
     loginstatuschange();
    }

  void setloginpreference(String uid) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    
      prefs.setString('userid', uid);
   
  }
  // setPref() async{
  //   var s = await preference.read('userid');
  //   print(s);
  //   if(await preference.read('userid')!= null) {
  //   userController.uid.value = await preference.read('userid');
  //   print(userController.uid.value);
  //       loginstatuschange();

  //   }
  // }

  loginstatuschange() {
    if(userController.uid.value != ''){
      isLoggedin.value = true;
    }
    else {
      isLoggedin.value = false;
    }
  }


  @override
  void onInit() async {
    super.onInit();
  getloginpreference();
      
  }

  @override
  void onClose() {
   
   
  }          
  

 

  
}