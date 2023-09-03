import 'package:flutter/material.dart';

class PatientPage extends StatelessWidget {
  const PatientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Page'), // ตั้งชื่อแสดงบน AppBar ตามที่คุณต้องการ
      ),
      body: Container(), // ส่วนเนื้อหาของหน้า PatientPage
    );
  }
}
