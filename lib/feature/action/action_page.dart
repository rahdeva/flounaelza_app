import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'action_controller.dart';

class ActionPage extends StatelessWidget {
  const ActionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ActionController>(
      builder: (controller) {
        return Scaffold(
            body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 24),
                child: Text(
                  "txt_home_attendance_status ".tr,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ));
      }
    );
  }
}
