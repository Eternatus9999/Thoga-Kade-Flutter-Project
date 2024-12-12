import 'package:flutter/material.dart';
import 'package:thoga_kade/components/Heading.dart';
import 'package:thoga_kade/pages/AddItem.dart';
import 'package:thoga_kade/pages/PlaceOrder.dart';
import 'package:thoga_kade/pages/RemoveItem.dart';
import 'package:thoga_kade/pages/ViewItem.dart';
import 'package:thoga_kade/pages/ViewOrder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Thoga Kade'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Heading().create(),
        body: Container(
            child: CustomScrollView(
              primary: false,
              slivers: <Widget>[
                SliverPadding(
                  padding: EdgeInsets.all(20),
                  sliver: SliverGrid.count(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 30,
                    crossAxisCount: 2,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AddItem()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          color: Colors.green[100],
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                child: Text('Add Item',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Image.asset(
                                    'asset/Add_Item.png',
                                    height: 100,
                                    width: double.infinity,
                                  ),
                              )
                            ],
                          )
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RemoveItem()));
                        },
                        child: Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.green[100],
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                  child: Text('Remove Item',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Image.asset(
                                    'asset/Remove_Item.png',
                                    height: 100,
                                    width: double.infinity,
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ViewItem()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          color: Colors.green[100],
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                child: Text('View Item',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Image.asset(
                                    'asset/Order_List.png',
                                    height: 100,
                                    width: double.infinity,
                                  ),
                              )
                            ],
                          )
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PlaceOrder()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          color: Colors.green[100],
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                child: Text('Place Order',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Image.asset(
                                    'asset/Order.png',
                                    height: 100,
                                    width: double.infinity,
                                  ),
                              )
                            ],
                          )
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ViewOrder()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          color: Colors.green[100],
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                child: Text('View Order',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Image.asset(
                                    'asset/Cart.png',
                                    height: 100,
                                    width: double.infinity,
                                  ),
                              )
                            ],
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ),
      ),
    );
  }
}
