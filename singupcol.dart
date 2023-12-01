import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scood_app/core/class/statusrequst.dart';
import 'package:scood_app/core/constans/Routes.dart';
import 'package:scood_app/core/function/handlingdata.dart';
import 'package:scood_app/data/datasource/remotedata/singup.dart';

class singupcontroller extends GetxController{

GlobalKey<FormState>formState = GlobalKey<FormState>(); 
 late  TextEditingController email;
 late  TextEditingController password;
 late  TextEditingController phone;
 late  TextEditingController username;
 statusrequst status=statusrequst.none;
singupData singupd = singupData(Get.find());
bool showpass=true;

showpassword(){
showpass=showpass==true?false:true;
update();
}

gotocheckemail(){Get.toNamed(Approutes.checkemail);}
singup(){
 var formdata = formState.currentState;
 if(formdata!.validate()){
  getdata();
Get.delete<singupcontroller>();
 }else{
    print("object");

 } 
}

  getdata()async{
    status = statusrequst.loading;
    update();
    var respons = await singupd.getdata(username.text,password.text,phone.text,email.text,);
    status = heandlingdata(respons);
    if(statusrequst.sucses==status){
      if(respons['status']=="success"){
        Get.toNamed(Approutes.singupveryficode,arguments: {"email":email.text});
    }else{
    status =statusrequst.failure;
  }
}        
update();}


@override
void onInit() {
  
  email = TextEditingController();
  password = TextEditingController();
  phone = TextEditingController();
  username = TextEditingController();
  super.onInit();
}

@override
void dispose() {
email.dispose();
password.dispose();
phone.dispose();
username.dispose();
super.dispose();
  }
  
}