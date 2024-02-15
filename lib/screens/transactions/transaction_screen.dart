import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (_, index) {
      return ListTile(
        leading: CircleAvatar(child: Text('14-02\n2024',textAlign: TextAlign.center,),radius: 50,),
        title: Text('Rs. 5000'),
        subtitle: Text('Food'),
      );
    },
        separatorBuilder: (_, index) {
      return SizedBox(height: 5,);
        },
        itemCount: 5
    );
  }
}
