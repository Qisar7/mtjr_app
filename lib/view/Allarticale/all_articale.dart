import 'package:fakeshop1/repository/web_service/fetch_allcategor.dart';
import 'package:fakeshop1/view/Allarticale/article_details.dart';
import 'package:flutter/material.dart';

class List_All_Articale extends StatelessWidget {
  List_All_Articale({
    required this.netWork,
  });

  final NetWork netWork;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: FutureBuilder(
          future: netWork.getallcatergorydata(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int i) {
                    return Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Alrticle_details(
                                indx: snapshot.data[i],
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text('${snapshot.data[i]}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red.shade400)),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            } else if (snapshot.hasError) {
              print('<<<<${snapshot.error}>>>>');
              return Text('eroooor');
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}
