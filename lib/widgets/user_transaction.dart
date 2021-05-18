import 'package:flutter/material.dart';
import 'package:flutter_sample_app/models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
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

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
        title: title,
        amount: amount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(
          onPressButton: _addNewTransaction,
        ),
        TransactionList(
          transaction: _userTransaction,
        )
      ],
    );
  }
}
