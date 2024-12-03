import 'package:flutter/material.dart';
import 'package:trackx/widgets/expenses_list/expenses_list.dart';
import 'package:trackx/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registerdExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 99.10,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Dinner',
      amount: 15.10,
      date: DateTime.now(),
      category: Category.food,
    ),
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Chart'),
          Expanded(
            child: ExpensesList(
              expenses: _registerdExpenses,
            ),
          )
        ],
      ),
    );
  }
}
