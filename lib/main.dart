import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New 등촌칼국수', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Cigarette', amount: 109.99, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'New Iron 5', amount: 659.99, date: DateTime.now()),
    Transaction(
        id: 't4',
        title: 'New Macbook Pro',
        amount: 3126.99,
        date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              child: Container(
                color: Colors.blue,
                child: Text("CHART!"),
                width: 100,
              ),
              elevation: 11.0,
            ),
            Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        autocorrect: false,
                        decoration: InputDecoration(labelText: 'Title'),
                      ),
                      TextField(
                        autocorrect: false,
                        decoration: InputDecoration(labelText: 'Amount'),
                      ),
                      TextButton(
                          onPressed: () => print("Hello"),
                          child: Text(
                            'Add Transaction',
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                )),
            Column(
              children: transactions
                  .map((tx) => Card(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: Text(
                                '\$${tx.amount.toString()}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.purple),
                              ),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2)),
                                  border: Border.all(
                                    color: Colors.purple,
                                    width: 2,
                                  )),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tx.title,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  DateFormat('yyyy-MM-dd').format(tx.date),
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ))
                  .toList(),
            )
          ],
        ));
  }
}
