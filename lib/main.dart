import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expence/transection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<Transaction> trans = [
    Transaction(id: 't1', title: 'Shoe', cost: 1500, date: DateTime.now()),
    Transaction(id: 't2', title: 'Grosery', cost: 3000, date: DateTime.now())
  ];
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expences'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            color: Colors.blue,
            child: Container(width: double.infinity, child: Text('Chart')),
          ),
          Card(
            elevation: 5,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(decoration: InputDecoration(labelText: 'Title')),
                  TextField(decoration: InputDecoration(labelText: 'Price')),
                  ElevatedButton(onPressed: null, child: Text('Submit'))
                ],
              ),
            ),
          ),
          Column(
              children: trans.map((tx) {
            return Card(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Text(
                        'BDT ' + tx.cost.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 7, 7)),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Text(
                          tx.title,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                        Text(
                          DateFormat.yMMMd().format(tx.date),
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }).toList())
        ],
      ),
    );
  }
}
