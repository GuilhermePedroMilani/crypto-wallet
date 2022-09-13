import 'package:flutter/material.dart';

class BottomNavigationWarren extends StatelessWidget {
  const BottomNavigationWarren({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.red,
      items: const [
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/Warren.png"),
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/Movimentacoes.png"),
            ),
            label: "Movimentações"),
      ],
    );
  }
}
