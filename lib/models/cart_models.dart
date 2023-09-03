import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  final List _shopItems = [ 
    ["BedStraddleTable", "120","assets/16.jpg", Colors.blue],
    ["PatientCart", "480","assets/1.jpg", Colors.blue],
    ["MeasureBloodSugar", "690","assets/11.jpg", Colors.blue ],
    ["BodyThermometer", "580","assets/6.jpg", Colors.blue ],
    
    ];

    List _cartItems = [];

    get shopItems => _shopItems;

    get cartItems => _cartItems;

    //add
    void additemToCart(int index){
      _cartItems.add(_shopItems[index]);
      notifyListeners();
    }

    //remove
    void removeitemFromCart(int index){
      _cartItems.removeAt(index);
      notifyListeners();
    }

    // Calculate total
 String calculateTotal() {
  double totalPrice = 0;
  for (int i = 0; i < _cartItems.length; i++) {
    double itemPrice = double.tryParse(_cartItems[i][1].toString()) ?? 0.0;
    totalPrice += itemPrice;
    
    // เพิ่มคำสั่ง print เพื่อตรวจสอบค่าต่าง ๆ
    print("Item $i: ${_cartItems[i][0]}, Price: $itemPrice, Total: $totalPrice");
  }
  return totalPrice.toStringAsFixed(2);
}
}