import 'package:fakeshop1/model/allproduct_model.dart';
import 'package:fakeshop1/repository/helper/navigator_help.dart';
import 'package:fakeshop1/repository/web_service/fetch_allcategor.dart';
import 'package:fakeshop1/view/productdetails/product_details.dart';
import 'package:flutter/material.dart';

class All_Product extends StatelessWidget {
  All_Product({
    required this.netWork,
  });

  final NetWork netWork;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: netWork.getallprodectdata(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          List<AllProduct> data = snapshot.data as List<AllProduct>;

          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int i) {
              return Card(
                child: InkWell(
                  onTap: () {
                    navigatoronly(
                        context,
                        Product_details(
                          title: data[i].title,
                          price: data[i].price.toString(),
                          description: data[i].description,
                          img: data[i].image,
                          categor: data[i].category,
                        ));
                  },
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(data[i].image),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  '${data[i].title}',
                                  style: TextStyle(fontSize: 12),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              // Text('${data[i].category}'),
                            ],
                          ),
                        ),
                      ]),
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          print(
            '<<<<<<${snapshot.error}',
          );
          return Text('erorrrr');
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
