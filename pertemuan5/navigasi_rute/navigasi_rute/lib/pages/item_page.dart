import 'package:flutter/material.dart';
import 'package:navigasi_rute/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
              "${itemArgs.name} with ${itemArgs.price} and ${itemArgs.stock}"),
        ),
      ),
      // body: Container(
      //     child: Column(
      //   children: [
      //     Image.asset('assets/images/$itemArgs.image'),
      //     Text("${itemArgs.name} with ${itemArgs.price} and ${itemArgs.stock}"),
      //   ],
      // )),
    );
  }
}
