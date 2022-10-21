import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_first/tour/tourPage.dart';
import 'ErrorPage/Error.dart';
import 'kid/preschool.dart';
import 'dart:math';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_first/tour/tourPage.dart';

int age = Random().nextInt(3);
List choose = [];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(83, 178, 178, 1.0),
      ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('源順App'),
            backgroundColor: Color.fromRGBO(83, 178, 178, 1.0),
          ),
          drawer: const drawers(),
      body: HomePage(),
    ));
  }
}

class drawers extends StatelessWidget {
  const drawers({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ]
      ),
    )
  );

  Widget buildHeader(BuildContext context) => Material(
    color: Color.fromRGBO(83, 178, 178, 1.0),
    child:InkWell(
      onTap:() {},
      child:Container(
        padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
    ),
  )));

  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(24),
    child:Wrap(
    runSpacing: 16,
    children: [
      ListTile(
        leading: const Icon(Icons.home_outlined),
        title: const Text("首頁"),
        onTap: () => 
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyApp(),)),
      ),
      ListTile(
        leading: const Icon(Icons.settings_voice),
        title: const Text("語音導覽"),
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => tourPage(),));
          count = 0;  
        },
      ),
  ],
  )
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: (
        <Widget>[
          Expanded(
            flex: 1,
              child:Container(
                margin: const EdgeInsets.only(top:10.0, left: 10, bottom: 10, right: 10),
                child : ElevatedButton(
                  onPressed: () {choose=pickup();age = 3;Navigator.push(
                context, MaterialPageRoute(builder: (context) => _highclass()));},
                  child: Text('高年級以上'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(100),
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.blue
                  ),
                ),
              )
            ),
            Expanded(
              flex: 1,
              child:
              Container(
                margin: const EdgeInsets.only(top:10.0, left: 10, bottom: 10, right: 10),
                child : ElevatedButton(
                  onPressed: () {choose=pickup();age = 2;Navigator.push(
                context, MaterialPageRoute(builder: (context) => _midclass()));},
                  child: Text('中年級'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(100),
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.green
                  ),
                ),
              )
            ),
            Expanded(
              flex: 1,
              child:
              Container(
                margin: const EdgeInsets.only(top:10.0, left: 10, bottom: 10, right: 10),
                child : ElevatedButton(
                  onPressed: () {choose=pickup();age = 1;Navigator.push(
                context, MaterialPageRoute(builder: (context) => _lowerclass()));},
                  child: Text('低年級'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(100),
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.orange
                  ),
                ),
              )
            ),
            Expanded(
              flex: 1,
              child:
              Container(
                margin: const EdgeInsets.only(top:10.0, left: 10, bottom: 10, right: 10),
                child : ElevatedButton(
                  onPressed: () {choose=pickup();age = 0;Navigator.push(
                context, MaterialPageRoute(builder: (context) => _PreSchool()));},
                  child: Text('學齡前'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(100),
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.red
                  ),
                ),
              )
            )
        ]
      )
    );
  }
}

class _PreSchool extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('學齡前題目'),
        backgroundColor: Color.fromRGBO(83, 178, 178, 1.0),
      ),
      drawer: const drawers(),
      body: PreSchool(),
    );
  }
}

class _lowerclass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('低年級題目'),
        backgroundColor: Color.fromRGBO(83, 178, 178, 1.0),
      ),
      drawer: const drawers(),
      body: PreSchool(),
    );
  }
}

class _midclass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('中年級題目'),
        backgroundColor: Color.fromRGBO(83, 178, 178, 1.0),
      ),
      drawer: const drawers(),
      body: PreSchool(),
    );
  }
}

class _highclass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('高年級題目'),
        backgroundColor: Color.fromRGBO(83, 178, 178, 1.0),
      ),
      drawer: const drawers(),
      body: PreSchool(),
    );
  }
}