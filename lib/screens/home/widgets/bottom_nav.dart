import 'package:flutter/material.dart';
import 'package:personal_money_manager/screens/home/home_screen.dart';

class MoneyManagerBottomNav extends StatelessWidget {
  const MoneyManagerBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HomePage.selectedIndexNotifier,
      builder: (_, updatedIndex, __) {
        return BottomNavigationBar(
          currentIndex: updatedIndex,
          onTap: (newIndex) {
            HomePage.selectedIndexNotifier.value = newIndex;
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Transaction'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Category')
          ],
        );
      },
    );
  }
}
