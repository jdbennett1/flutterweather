
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TabBarDemoState();
}

class TabBarDemoState extends State<TabBarDemo> {
  late String tempkal;
  void getReq1() {
    var res = http.get(Uri.parse('https://readkal1-b35gcvfefa-uc.a.run.app'));
    res.then((value) => setState(() {
          tempkal = value.body;
        }));
  }

  late String tempzoo;
  void getReq2() {
    var res = http.get(Uri.parse('https://readkal2-b35gcvfefa-uc.a.run.app'));
    res.then((value) => setState(() {
          tempzoo = value.body;
        }));
  }

  late String tempboze;
  void getReq3() {
    var res = http.get(Uri.parse('https://readkal3-b35gcvfefa-uc.a.run.app'));
    res.then((value) => setState(() {
          tempboze = value.body;
        }));
  }

  @override
  Widget build(BuildContext context) {
    getReq1();
    getReq2();
    getReq3();
    var kal = tempkal.split(",");
    var zoo = tempzoo.split(",");
    var boze = tempboze.split(",");
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: "Kalispell"),
                Tab(text: "Missoula"),
                Tab(text: "Bozeman"),
              ],
            ),
            title: const Text('Daily Weather'),
          ),
          backgroundColor: Colors.blue,
          body: TabBarView(
            children: <Widget>[
              ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  SizedBox(
                    height: 100,
                    child: Center(
                        child: Card(
                            color: Colors.yellow,
                            child: ListTile(
                                title: Text("Today"),
                                subtitle: Text("Expected temperature: " + kal[0] + '°'),
                                trailing: Icon(Icons.sunny)))),
                  ),
                  SizedBox(
                    height: 100,
                    child: Center(
                        child: Card(
                            color: Colors.yellow,
                            child: ListTile(
                                title: Text(kal[1]),
                                subtitle: Text("Expected temperature: " + kal[2] + '°'),
                                trailing: Icon(Icons.sunny)))),
                  ),
                  SizedBox(
                    height: 100,
                    child: Center(
                        child: Card(
                            color: Colors.yellow,
                            child: ListTile(
                                title: Text(kal[3]),
                                subtitle: Text("Expected temperature: " + kal[4] + '°'),
                                trailing: Icon(Icons.sunny)))),
                  ),
                ],
              ),
              ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  SizedBox(
                    height: 100,
                    child: Center(
                        child: Card(
                            color: Colors.yellow,
                            child: ListTile(
                                title: Text("Today"),
                                subtitle: Text("Expected temperature: " + zoo[0] + '°' ),
                                trailing: Icon(Icons.sunny)))),
                  ),
                  SizedBox(
                    height: 100,
                    child: Center(
                        child: Card(
                            color: Colors.yellow,
                            child: ListTile(
                                title: Text(zoo[1]),
                                subtitle: Text("Expected temperature: " + zoo[2] + '°'),
                                trailing: Icon(Icons.sunny)))),
                  ),
                  SizedBox(
                    height: 100,
                    child: Center(
                        child: Card(
                            color: Colors.yellow,
                            child: ListTile(
                                title: Text(zoo[3]),
                                subtitle: Text("Expected temperature: " + zoo[4] + '°'),
                                trailing: Icon(Icons.sunny)))),
                  ),
                ],
              ),
              ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  SizedBox(
                    height: 100,
                    child: Center(
                        child: Card(
                            color: Colors.yellow,
                            child: ListTile(
                                title: Text("Today"),
                                subtitle: Text("Expected temperature: " + boze[0] + '°'),
                                trailing: Icon(Icons.sunny)))),
                  ),
                  SizedBox(
                    height: 100,
                    child: Center(
                        child: Card(
                            color: Colors.yellow,
                            child: ListTile(
                                title: Text(boze[1]),
                                subtitle: Text("Expected temperature: " + boze[2] + '°'),
                                trailing: Icon(Icons.sunny)))),
                  ),
                  SizedBox(
                    height: 100,
                    child: Center(
                        child: Card(
                            color: Colors.yellow,
                            child: ListTile(
                                title: Text(boze[3]),
                                subtitle: Text("Expected temperature: " + boze[4] + '°'),
                                trailing: Icon(Icons.sunny)))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
