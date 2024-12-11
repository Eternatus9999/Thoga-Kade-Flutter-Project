import 'package:flutter/material.dart';
import 'package:thoga_kade/components/Heading.dart';
import 'package:thoga_kade/components/TxtField.dart';
import 'package:thoga_kade/utils/ModelType.dart';

import '../dto/Item.dart';
import '../services/FileService.dart';


class AddItem extends StatelessWidget{
  final validationNotifier = ValueNotifier("");
  Item item = new Item("", "", 0, 0, "", "");
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: Heading().create(),
          body: Container(
            child: Column(
              children:[
                TxtField().create(validationNotifier,"Item Id",item,"id",ModelType.ITEM),
                TxtField().create(validationNotifier,"Item Name",item,"name",ModelType.ITEM),
                TxtField().create(validationNotifier,"Price per Kg",item,"price",ModelType.ITEM),
                TxtField().create(validationNotifier,"Available Quantity",item,"qty",ModelType.ITEM),
                TxtField().create(validationNotifier,"Category",item,"category",ModelType.ITEM),
                TxtField().create(validationNotifier,"Expiry Date",item,"date",ModelType.ITEM),
                ValueListenableBuilder(valueListenable: validationNotifier, builder: (_,value,__){
                  return Text(value, style: const TextStyle(
                      color: Colors.red
                  ),);
                }),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        FileService().saveData("inventory.txt", item.toString());
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
                )
              ],
            ),
          )
      ),
    );
  }



}