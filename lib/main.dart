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

// ignore: must_be_immutable
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
        title: const Text('Expences'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            color: Colors.blue,
            child:
                // ignore: sized_box_for_whitespace
                Container(width: double.infinity, child: const Text('Chart')),
          ),
          Card(
            elevation: 5,
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: const [
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
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2)),
                      child: Text(
                        'BDT ${tx.cost}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 7, 7)),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx.title,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          DateFormat.yMMMd().format(tx.date),
                          style: const TextStyle(color: Colors.grey),
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
