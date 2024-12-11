import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thoga_kade/pages/AddItem.dart';
import 'package:thoga_kade/utils/ModelType.dart';

import '../dto/Item.dart';

class TxtField {

  final notify = ValueNotifier<String>("");

  String _value = "";

  void setValue(Object obj, String objpart, ModelType type){
    if(type == ModelType.ITEM){
      Item item =  obj as Item;
      switch(objpart){
        case "id":
          item.id = _value;
          break;
        case "name":
          item.name = _value;
          break;
        case "price":
          item.pricePerKg = double.parse(_value);
          break;
        case "qty":
          item.availableQuantity = double.parse(_value);
          break;
        case "category":
          item.category = _value;
          break;
        case "date":
          item.expiryDate = _value;
          break;
      }
    }
    else{

    }
  }

  Widget create(ValueNotifier validationNotifier,String hinttext,Object obj, String objpart, ModelType type) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: (String value){
          _value = value;
          setValue(obj, objpart, type);
        },
        style: TextStyle(
          fontSize: 20.0,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),

          hintText: hinttext,

        ),
      ),
    );
  }

}