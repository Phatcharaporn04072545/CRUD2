import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tproject_1/components/item_tile.dart';
import 'package:tproject_1/models/cart_models.dart';
import 'package:tproject_1/pages/cart_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return CartPage();
          },
        )),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_cart_sharp),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 48),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text('Hello Everyone'),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Let's go Buy Some Home Medical Equipment",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(height: 24),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Divider(),
          ),
          SizedBox(height: 24),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Item',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Consumer<CartModel>(
            builder: (context, value, child) {
              return GridView.builder(
                itemCount: value.shopItems.length,
                padding: EdgeInsets.all(2),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                ),
                itemBuilder: (context, index) {
                  return Itemtile(
                    itemName: value.shopItems[index][0],
                    itemPrice: value.shopItems[index][1],
                    imagePath: value.shopItems[index][2],
                    Color: value.shopItems[index][3],
                    onPressed:() {
                      Provider.of<CartModel>(context, listen: false)
                      .additemToCart(index);

                      Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return CartPage();
                            },
                          ));
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}