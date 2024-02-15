import 'package:flutter/material.dart';
import 'package:personal_money_manager/screens/category/expense_category_list.dart';
import 'package:personal_money_manager/screens/category/income_Category_list.dart';

import '../../db/category/category_db.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    CategoryDB().getCategories().then((value) {
      print('Category Get');
      print(value.toString());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            controller: tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(
                text: 'INCOME',
              ),
              Tab(
                text: 'EXPENSE',
              )
            ]),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              IncomeCategoryList(),
              ExpenseCategoryList(),
            ],
          ),
        )
      ],
    );
  }
}
