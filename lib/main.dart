import 'package:filtered_list/home/view.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const FilterdListApp());
}

class FilterdListApp extends StatelessWidget {
  const FilterdListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
