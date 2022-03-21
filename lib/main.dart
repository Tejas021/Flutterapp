import 'package:flutter/material.dart';
import 'package:newapp/Card.dart';
import 'Names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Student> names = [
    Student(name: 'Tejas',rollno: 29),
    Student(name: 'Asim',rollno: 15),Student(name: 'Yogesh',rollno: 16),Student(name: 'Naman',rollno: 16),
    Student(name: 'Akshay',rollno: 22),
    Student(name: 'Shivam',rollno: 41),Student(name: 'Manish',rollno: 1020314),Student(name: 'Tushar',rollno: 38)



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text("MapDemo"),
        centerTitle: true,
          backgroundColor: Colors.blue[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(20.0),
              child: Column(
                children: names.map((e) =>
                    Padding(
                      padding: const EdgeInsets.all(10.0),



                                child:Card1(name: e.name,roll: e.rollno,)



                    )
                              ).toList()
              ),
            ),
          ],
        ),
      ),
    );
  }
}

