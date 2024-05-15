import 'package:flutter/material.dart';
import 'package:sertifikasi/app/data/motor_model.dart'; // Sesuaikan dengan path model Anda

class MotorItem extends StatelessWidget {
  final Motor motor;

  const MotorItem({Key? key, required this.motor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          motor.imageUrl,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        title: Text(motor.name),
        subtitle: Text(motor.description),
        onTap: () {},
      ),
    );
  }
}
