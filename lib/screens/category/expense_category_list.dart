import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpenseCategoryList extends StatelessWidget {
  const ExpenseCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Card(
              child: ListTile(
                title: Text('Expense Category List ${index + 1}'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (_, index) {
          return SizedBox(
            height: 5,
          );
        },
        itemCount: 10);
  }
}
