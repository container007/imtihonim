import 'package:flutter/material.dart';



class DynamicRo extends StatefulWidget {
  @override
  _DynamicRoState createState() => _DynamicRoState();
}

class _DynamicRoState extends State<DynamicRo> {
  List<String> rows = [];

  @override
  void initState() {
    super.initState();
    generateRows();
  }

  void generateRows() {
    String currentRow = "x";
    rows.add(currentRow);
    for (int i = 0; i < 25; i++) {
      currentRow = currentRow + "x" * 2;
      rows.add(currentRow);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: rows.length,
        itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
        rows[index],
        style: TextStyle(
      color: Colors.black,
      backgroundColor: Colors.white,
        ),
      ),
      
      );
        },
      ),
    );

  }
}
