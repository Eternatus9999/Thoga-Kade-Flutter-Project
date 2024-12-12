import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thoga_kade/components/Heading.dart';

import '../components/TxtField.dart';
import '../dto/Order.dart';
import '../services/FileService.dart';
import '../utils/ModelType.dart';

class PlaceOrder extends StatelessWidget{
  final validationNotifier = ValueNotifier("");
  String price = "";
  Order order = new Order("","",0,0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: Heading().create(),
          body: Container(
            child: Column(
                children:[
                  TxtField().create(validationNotifier,"Order Id",order,"id",ModelType.ORDER),
                  TxtField().create(validationNotifier,"Item Id",order,"item_id",ModelType.ORDER),
                  TxtField().create(validationNotifier,"Qty",order,"qty",ModelType.ORDER),
                  Container(
                    alignment: Alignment(-0.8, 1),
                    child: Text('''Total Price:Rs.$price''',style: TextStyle(fontSize: 35),),
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        FileService().saveData("inventory.txt", order.toString());
                      },
                      child: Text('Add Item', style: TextStyle(fontSize: 20, color: Colors.black),),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        textStyle: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          )
        )
    );
  }
  
}