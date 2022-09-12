import 'package:card_2/utils/currency_formater.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  bool showMoney = true;
  double balanceBtc = 1;
  double balanceEth=7;
  double balanceLtc=3;
  double balanceTotal = 0;
  double sumTotal() {
    return balanceTotal = balanceBtc+balanceEth+balanceLtc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Cripto",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.red),
                    ),
                    GestureDetector(
                      child: Icon(
                          showMoney ? Icons.visibility_off : Icons.visibility),
                      onTap: () {
                        setState(() {
                          showMoney = !showMoney;
                        });
                      },
                    ),
                  ],
                ),
                showMoney
                    ? Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    : Text(
                        realMoney.format(balanceTotal),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                const Text(
                  "Valor total de moedas",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Column(
            children: [
              const Divider(
                thickness: 0.6,
                color: Colors.black,
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/ETH.png"),
                ),
                title: const Text("ETH"),
                subtitle: const Text("Ethereum"),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      showMoney
                          ? Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)),
                            )
                          : Text(realMoney.format(balanceEth)),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "0.032 ETH",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Divider(
                thickness: 0.6,
                color: Colors.black,
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/BTC.png"),
                ),
                title: const Text("BTC"),
                subtitle: const Text("Bitcoin"),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      showMoney
                          ? Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)),
                            )
                          : Text(realMoney.format(balanceBtc)),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "0.032 BTC",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Divider(
                thickness: 0.6,
                color: Colors.black,
              ),
              ListTile(
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/LTC.png"),
                ),
                title: const Text("LTC"),
                subtitle: const Text("Litecoin"),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      showMoney
                          ? Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)),
                            )
                          : Text(realMoney.format(balanceLtc)),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "0.032 LTC",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/Warren.png")), label: "Home"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/Movimentacoes.png")),
              label: "Movimentações"),
        ],
      ),
    );
  }
}
