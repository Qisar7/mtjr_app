import 'package:fakeshop1/model/allproduct_model.dart';
import 'package:fakeshop1/repository/web_service/fetch_allcategor.dart';
import 'package:flutter/material.dart';

class Alrticle_details extends StatelessWidget {
  NetWork netWork = NetWork();

  final String indx;

  Alrticle_details({required this.indx});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: netWork.get_item_by_category(indx),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          List<AllProduct> data = snapshot.data as List<AllProduct>;
          print('sucsess $indx');
          return Scaffold(
            appBar: AppBar(
              title: Text('$indx'),
              centerTitle: true,
            ),
            body: ListView.builder(
              physics: BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              itemCount: data.length,
              itemBuilder: (BuildContext context, int i) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {},
                        splashColor: Color.fromARGB(255, 216, 210, 209),
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(data[i].image),
                              fit: BoxFit.contain,
                            ),
                          ),
                          child: Text(
                            '\$ ${data[i].price}',
                            style: TextStyle(
                              color: Color.fromARGB(255, 20, 166, 6),
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                );
              },
            ),
          );
        } else if (snapshot.hasError) {
          print('<<<<<<<<<<${snapshot.error}>>>>>>>>>>');
          return Text('erorr');
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
