import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thoga_kade/components/Heading.dart';

class RemoveItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: Heading().create(),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 8.0),
            child: Container(
              child: Column(
                children: [
                  TextField(
                    onChanged: (String value){},
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Item ID",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: TextButton(
                        onPressed: () {

                        },
                        child: Text('Search Item', style: TextStyle(fontSize: 20, color: Colors.black),),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green,
                          textStyle: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (String value){},
                      enabled: false,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Item Name",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (String value){},
                      enabled: false,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Priice",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (String value){},
                      enabled: false,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Qty",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (String value){},
                      enabled: false,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Date",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Remove Item', style: TextStyle(fontSize: 20, color: Colors.black),),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
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
            ),
          ),
        )
    );
  }
}