import 'package:flutter/material.dart';
import '../widgets/crypto_info.dart';
import '../widgets/wallet_infos.dart';

class PageWallet extends StatefulWidget {
  const PageWallet({Key? key}) : super(key: key);

  @override
  State<PageWallet> createState() => _PageWalletState();
}

class _PageWalletState extends State<PageWallet> {
  bool showMoney = true;
  double balanceBtc = 1;
  double balanceEth = 7;
  double balanceLtc = 3;
  double? balanceTotal;
  double sumTotal() {
    return balanceTotal = balanceBtc + balanceEth + balanceLtc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WalletInfos(),
            CryptoInfo(
              balance: balanceEth,
              initialsCoin: "ETH",
              nameCoin: "Ethereum",
            ),
            CryptoInfo(
              balance: balanceBtc,
              initialsCoin: "BTC",
              nameCoin: "Bitcoin",
            ),
            CryptoInfo(
              balance: balanceLtc,
              initialsCoin: "LTC",
              nameCoin: "Litecoin",
            ),
          ],
        ),
      ),
    );
  }
}
