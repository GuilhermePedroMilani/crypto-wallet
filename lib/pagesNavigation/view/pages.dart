import 'package:card_2/pageMovements/view/page_movements.dart';
import 'package:card_2/pageWallet/view/page_wallet.dart';
import 'package:flutter/material.dart';

class PagesNavigation extends StatefulWidget {
  const PagesNavigation({
    Key? key,
  }) : super(key: key);

  @override
  State<PagesNavigation> createState() => _BottomNavigationWarrenState();
}

class _BottomNavigationWarrenState extends State<PagesNavigation> {
  int opcaoSelecionado = 0;
  @override
  Widget build(BuildContext context) {
    
    void onItemTap(int index) {
      opcaoSelecionado = index;
      setState(() {});
    }

    List<Widget> pages = [
      const PageWallet(),
      const PageMovements(),
    ];

    return Scaffold(
      body: pages.elementAt(opcaoSelecionado),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: opcaoSelecionado,
        onTap: onItemTap,
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
      ),
    );
  }
}
