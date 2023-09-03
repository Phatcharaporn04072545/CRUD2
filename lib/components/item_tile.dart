import 'package:flutter/material.dart';
import 'package:tproject_1/pages/%E0%B8%B4bed_page.dart';
import 'package:tproject_1/pages/blood_sugar.dart';
import 'package:tproject_1/pages/body_thermometer.dart';
import 'package:tproject_1/pages/patient_cart_page.dart';

class Itemtile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final Color;
  void Function()? onPressed;

  Itemtile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.Color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    imagePath,
                    height: 160,
                  ),
                  Text(
                    itemName,
                    style: TextStyle(fontSize: 16),
                  ),
                  MaterialButton(
                    onPressed: () {
                      // ใช้ตัวแปร index เพื่อระบุหน้าปลายทาง
                      int index = 0; // แทนค่า index ด้วยตัวเลขที่ต้องการ

                      switch (index) {
                        case 0:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BedPage(),
                            ),
                          );
                          break;
                        case 1:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PatientPage(),
                            ),
                          );
                          break;
                        case 2:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BloodSugar(),
                            ),
                          );
                          break;
                        case 3:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BodyThermometer(),
                            ),
                          );
                          break;
                        default:
                          break;
                      }
                    },
                    color: Colors.teal[200],
                    child: Text(
                      '\$' + itemPrice,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  )
                ])));
  }
}
