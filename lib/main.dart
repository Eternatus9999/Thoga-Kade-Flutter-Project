import 'package:flutter/material.dart';
import 'package:thoga_kade/pages/AddItem.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),)),
      ),
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
                        child: Text('Heed not the rabble'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Container 1 clicked');
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.green[100],
                        child: Text('Heed not the rabble'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Container 1 clicked');
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.green[100],
                        child: Text('Heed not the rabble'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Container 1 clicked');
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.green[100],
                        child: Text('Heed not the rabble'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Container 1 clicked');
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.green[100],
                        child: Text('Heed not the rabble'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Browser',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
