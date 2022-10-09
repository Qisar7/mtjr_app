import 'package:flutter/material.dart';

class Search_widget extends StatelessWidget {
  const Search_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 3,
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          label: Text('Search ?'),
          labelStyle: TextStyle(color: Colors.grey.shade600),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                size: 30,
                color: Colors.red,
              ),
            ),
          ),
          // filled: true,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
