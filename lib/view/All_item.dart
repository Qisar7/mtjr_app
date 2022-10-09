import 'package:fakeshop1/model/allproduct_model.dart';
import 'package:fakeshop1/repository/helper/navigator_help.dart';
import 'package:fakeshop1/repository/web_service/fetch_allcategor.dart';
import 'package:fakeshop1/view/Allarticale/all_articale.dart';
import 'package:fakeshop1/view/productdetails/all_product_screen.dart';
import 'package:fakeshop1/view/productdetails/product_details.dart';
import 'package:fakeshop1/view/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class All_item extends StatelessWidget {
  NetWork netWork = NetWork();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Search_widget(),
            List_All_Articale(netWork: netWork),
            const SizedBox(height: 20),
            All_Product(
              netWork: netWork,
            ),
          ],
        ),
      ),
    );
  }
}
