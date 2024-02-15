import 'package:flutter/material.dart';
import 'package:personal_money_manager/screens/category/category_add_popup.dart';
import 'package:personal_money_manager/screens/category/category_screen.dart';
import 'package:personal_money_manager/screens/home/widgets/bottom_nav.dart';
import 'package:personal_money_manager/screens/models/category/category_model.dart';
import 'package:personal_money_manager/screens/transactions/transaction_screen.dart';

import '../../db/category/category_db.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final _pages = const [TransactionScreen(), CategoryScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MONEY MANAGER',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (_, updatedIndex, __) {
          return _pages[updatedIndex];
        },
      ),
      bottomNavigationBar: const MoneyManagerBottomNav(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedIndexNotifier.value == 0) {
            print('Transaction Page');
          } else {
            print('Category Page');
            showCategoryAddPopup(context);
            
            // final sample = CategoryModel(id: DateTime
            //     .now()
            //     .millisecondsSinceEpoch
            //     .toString(),
            //     name: 'Travel',
            //     type: CategoryType.expense,
            // );
            // CategoryDB().insertCategory(sample);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
