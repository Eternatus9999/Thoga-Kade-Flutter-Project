import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/Heading.dart';

class ViewOrder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: Heading().create(),
          body: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListView.separated(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index){
                index+=1;
                return ListTile(
                  title: Text('''Order $index'''),
                  tileColor: Colors.green[300],
                  onTap: (){},
                );
              },
              separatorBuilder: (BuildContext context, int index)=> Divider(
                color: Colors.black,
              ),
            ),
          ),
        )
    );
  }

}