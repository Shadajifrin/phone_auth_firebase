import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_auth/loginfire.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBx3YxlMOGR_loxi2XCZmm-Fm2bNRKVkfg",
          appId: "1:412316429551:web:59a6aafa41fa220565bf1a",
          messagingSenderId: "",
          projectId: "addclass-52114"));
  runApp(MyAppFire());
}

class MyAppFire extends StatelessWidget {
  const MyAppFire({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: FireSplash(),
    );
  }
}

class FireSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Get.off(LoginScreen());
    });
    return Scaffold(
      body: Center(
        child: FlutterLogo(size: 30),
      ),
    );
  }
}
