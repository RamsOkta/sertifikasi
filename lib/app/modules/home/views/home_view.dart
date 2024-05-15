import 'package:flutter/material.dart';
import 'package:sertifikasi/app/data/motor_model.dart';
import 'package:sertifikasi/app/modules/add_item/views/add_item_view.dart';
import 'package:sertifikasi/app/data/motor_item.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Motor> motors = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddItemView()),
              ).then((result) {
                if (result != null) {
                  setState(() {
                    motors.add(result);
                  });
                }
              });
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: motors.length,
        itemBuilder: (context, index) {
          return MotorItem(motor: motors[index]);
        },
      ),
    );
  }
}
