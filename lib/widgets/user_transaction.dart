import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 30.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 25.52,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Dog Food',
      amount: 35.90,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Something I bought',
      amount: 14.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Something else that I bought',
      amount: 64.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Who bought this?',
      amount: 4.99,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
