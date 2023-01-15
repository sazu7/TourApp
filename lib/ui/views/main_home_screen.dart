// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/ui/views/bottom_controller/bottom_nav_controller.dart';
import 'package:shelter/ui/views/drawer.dart';

class MainHomeScreen extends StatelessWidget {
  Future _exitDialog(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Are you exit this App"),
          content: Row(
            children: [
              ElevatedButton(
                onPressed: ()=>Get.back(),
                child: Text("No"),
              ),
              SizedBox(width: 20.w),
              ElevatedButton(
                onPressed: ()=>SystemNavigator.pop(),
                child: Text("Yes"),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _exitDialog(context);
        return Future.value(false);
      },
      child: Scaffold(
        body: Stack(
          children: [
            DrawerScreen(),
            BottomNavController(),
          ],
        ),
      ),
    );
  }
}