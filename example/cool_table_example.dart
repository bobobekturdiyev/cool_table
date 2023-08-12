import 'package:cool_table/cool_table.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cool Table"),
      ),
      body: Column(
        children: [
          WTable(
            border: Border.all(color: Colors.black, width: 1),
            padding: EdgeInsets.zero,
            rows: const [
              WTR(
                border:
                    Border(bottom: BorderSide(width: 2, color: Colors.blue)),
                children: [
                  WTD(child: Text("#"), flex: 1),
                  WTD(child: Text("Full name"), flex: 2),
                  WTD(child: Text("Website"), flex: 2),
                ],
              ),
              WTR(
                children: [
                  WTD(child: Text("1"), flex: 1),
                  WTD(child: Text("Bobobek Turdiev"), flex: 2),
                  WTD(child: Text("https://bobobek.com"), flex: 2),
                ],
              ),
              WTR(
                children: [
                  WTD(child: Text("2"), flex: 1),
                  WTD(child: Text("Programmer UZ"), flex: 2),
                  WTD(child: Text("https://programmer.uz"), flex: 2),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
