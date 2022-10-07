import 'package:fakeshop1/model/allproduct_model.dart';
import 'package:fakeshop1/repository/web_service/fetch_allcategor.dart';
import 'package:fakeshop1/view/All_item.dart';
import 'package:fakeshop1/view/cart.dart';
import 'package:fakeshop1/view/catergry.dart';
import 'package:fakeshop1/view/setting.dart';
import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  NetWork netWork = NetWork();

  List<Widget> wdget = [
    All_item(),
    catergory_Screen(),
    Cart_Screen(),
    Setting_screen()
  ];

  int cruntindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: wdget[cruntindex],
      appBar: AppBar(
        title: Text('SHOP'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: cruntindex,
          onTap: (val) {
            setState(() {
              cruntindex = val;
            });
          },
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey.shade600,
          items: [
            _bottmbar(Icons.home, 'Home'),
            _bottmbar(Icons.category, 'category'),
            _bottmbar(Icons.shopping_basket, 'CART'),
            _bottmbar(Icons.settings, 'setting')
          ]),
    );
  }

  BottomNavigationBarItem _bottmbar(IconData icon, String label) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
