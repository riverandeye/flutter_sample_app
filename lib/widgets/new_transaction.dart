import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function onPressButton;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction({this.onPressButton});

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    onPressButton(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
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
                controller: titleController,
              ),
              TextField(
                autocorrect: false,
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                onSubmitted: (_) => submitData,
              ),
              TextButton(
                  onPressed: submitData,
                  child: Text(
                    'Add Transaction',
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ));
  }
}
