import 'package:flutter/material.dart';
import 'package:navigasi_rute/models/item.dart';

class ItemPage extends StatelessWidget {
  ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shopping List', // Navbar Apps
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: Center(
          child: Text(
              "${itemArgs.name} with ${itemArgs.price} and ${itemArgs.stock}"),
        ),
      ),
    );
  }
}
