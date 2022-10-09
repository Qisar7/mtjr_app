import 'package:flutter/material.dart';

class List_in_drawer extends StatelessWidget {
  final Widget title;
  final VoidCallback ontap;

  List_in_drawer({required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.standard,
      onTap: ontap,
      title: title,
      trailing: Icon(Icons.arrow_forward_ios_outlined),
    );
  }
}
