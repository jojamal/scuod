import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scood_app/core/class/statusrequst.dart';
import 'package:scood_app/core/constans/Routes.dart';
import 'package:scood_app/core/function/handlingdata.dart';
import 'package:scood_app/data/datasource/remotedata/login.dart';
import 'package:scood_app/services/appservices.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';


class logincontroller extends GetxController{
 late  TextEditingController email;
 late  TextEditingController password;
 GlobalKey<FormState>formState = GlobalKey<FormState>(); 
bool showpass=true;
Appservices services=Get.find();
statusrequst status= statusrequst.none;
loginData logind = loginData(Get.find());


 
gotoforgetpassword(){Get.toNamed(Approutes.fofgetpassword);}
gotosingup(){Get.toNamed(Approutes.singup);}

showpassword(){
showpass=showpass==true?false:true;
update();
}

  getdata()async{
    status = statusrequst.loading;
    update();
    var respons = await logind.getdata(email.text,password.text);
    status = heandlingdata(respons);
    print(respons);
    if(statusrequst.sucses==status){
      if(respons['status']=="success"){
      if(respons['data']['user_aproved']==1){
        services.sharedpreferences.setInt("id",respons['data']['user_id'] );
        services.sharedpreferences.setString("email",respons['data']['user_email'] );
        services.sharedpreferences.setString("name",respons['data']['user_name']  );
        services.sharedpreferences.setInt("phone",respons['data']['user_phone'] );
        services.sharedpreferences.setInt("step", 2 );}
        
        Get.toNamed(Approutes.home);
    }else{
        Get.toNamed(Approutes.singupveryficode,arguments: {"email":email.text});
  }
}        
update();}


login(){
  var formdata=formState.currentState;
 if(formdata!.validate()){
  getdata();
    print("object");
    
 }else{
    print("not object");

 } }


@override
void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {print(value);String? token = value;});
  email = TextEditingController();
  password = TextEditingController();
 super.onInit();
}
@override
void dispose() {
email.dispose();
password.dispose();
super.dispose();
  }
}