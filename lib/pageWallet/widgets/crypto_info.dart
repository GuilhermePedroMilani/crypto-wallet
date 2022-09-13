import 'package:card_2/pageWallet/widgets/wallet_infos.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/utils/currency_formater.dart';

class CryptoInfo extends StatefulHookConsumerWidget {
  CryptoInfo({
    Key? key,
    required this.balance,
    required this.nameCoin,
    required this.initialsCoin,
  }) : super(key: key);

  final double balance;
  String nameCoin;
  String initialsCoin;

  @override
  ConsumerState<CryptoInfo> createState() => _CryptoInfoState();
}

class _CryptoInfoState extends ConsumerState<CryptoInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 1,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("images/${widget.initialsCoin}.png"),
          ),
          title: Row(
            children: [
              Text(widget.initialsCoin),
              const Spacer(),
              ref.watch(showMoneyProvider)
                  ? Container(
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    )
                  : Text(
                      realMoney.format(widget.balance),
                    ),
            ],
          ),
          subtitle: Row(
            children: [
              Text(widget.nameCoin),
              const Spacer(),
              Text(
                "0.032 ${widget.initialsCoin}",
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
          trailing: const Icon(Icons.chevron_right_sharp),
        ),
      ],
    );
  }
}
