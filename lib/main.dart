import 'package:flutter/material.dart';
import 'package:flutter_sample_app/widgets/user_transaction.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  child: Container(
                    color: Colors.blue,
                    child: Text("CHART!"),
                    width: 100,
                  ),
                  elevation: 11.0,
                ),
              ),
              UserTransaction()
            ],
          ),
        ));
  }
}
