import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scood_app/Approutes.dart';
import 'package:scood_app/Bindings.dart';
import 'package:scood_app/services/appservices.dart';
void main() async{
WidgetsFlutterBinding.ensureInitialized();
await initialservices(); 
runApp(const MyApp()); 
}
class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',  
    theme: ThemeData(
    fontFamily: "PlayfairDisplay",
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,),
    // home: onbordingpage(),
    initialBinding: initialbinding(),
    getPages: routes,
    );
  }
}
