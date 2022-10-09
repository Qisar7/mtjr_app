import 'package:fakeshop1/view/widget/List_in_drawer.dart';
import 'package:flutter/material.dart';

class Drawer_wd extends StatelessWidget {
  const Drawer_wd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          width: double.infinity,
          color: Color.fromARGB(255, 246, 71, 71),
        ),
        Column(
          children: [
            List_in_drawer(
              ontap: () {},
              title: Text('Catergory'),
            ),
            List_in_drawer(
              ontap: () {},
              title: Text('Cart'),
            ),
            List_in_drawer(
              ontap: () {},
              title: Text('Setting'),
            ),
          ],
        ),
      ]),
    );
  }
}
