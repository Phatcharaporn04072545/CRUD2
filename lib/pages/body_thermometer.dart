import 'package:flutter/material.dart';

class BodyThermometer extends StatelessWidget {
  const BodyThermometer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Body Thermometer'), // ตั้งชื่อแสดงบน AppBar ตามที่คุณต้องการ
      ),
      body: Container(), // ส่วนเนื้อหาของหน้า BodyThermometer
    );
  }
}
