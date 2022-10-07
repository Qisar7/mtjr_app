import 'package:fakeshop1/model/allproduct_model.dart';
import 'package:fakeshop1/repository/web_service/fetch_allcategor.dart';
import 'package:fakeshop1/view/Allarticale/all_articale.dart';
import 'package:fakeshop1/view/productdetails/all_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class All_item extends StatelessWidget {
  NetWork netWork = NetWork();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 3,
              child: TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  filled: true,
                  label: Text('Search ?'),
                  labelStyle: TextStyle(color: Colors.grey.shade600),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search_outlined,
                      size: 30,
                      color: Colors.red,
                    ),
                  ),
                  // filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            // color: Colors.green,
          ),
          List_All_Articale(netWork: netWork),
          const SizedBox(height: 20),
          Expanded(
            child: All_Product(netWork: netWork),
          ),
        ],
      ),
    );
  }
}
