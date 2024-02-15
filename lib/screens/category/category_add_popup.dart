import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_money_manager/screens/models/category/category_model.dart';

Future<void> showCategoryAddPopup(BuildContext context) async {
  showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text('Add Category'),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add category',
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                RadioButton(title: 'Income', type: CategoryType.income),
                RadioButton(title: 'Expense', type: CategoryType.expense)
              ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurple)),
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        );
      });
}

class RadioButton extends StatelessWidget {

  final String title;
  final CategoryType type;
  const RadioButton({
    super.key,
    required this.title,
    required this.type,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<CategoryType>(
          value: type,
            groupValue: CategoryType.expense,
            onChanged: (value) {},
        ),
        Text(title),
      ],
    );
  }
}
