import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sertifikasi/app/data/motor_model.dart';

class AddItemController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController imageUrlController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void addItem() {
    Motor newMotor = Motor(
      name: nameController.text,
      imageUrl: imageUrlController.text,
      description: descriptionController.text,
    );
    Get.back(result: newMotor);
  }

  @override
  void onClose() {
    nameController.dispose();
    imageUrlController.dispose();
    descriptionController.dispose();
    super.onClose();
  }
}
