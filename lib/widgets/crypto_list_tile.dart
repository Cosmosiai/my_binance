import 'package:flutter/material.dart';
import '../models/CryptoCoinModel.dart';
import '../theme.dart';

class CryptoListTile extends StatelessWidget {
  const CryptoListTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(coin.image, height: 30,width: 30,),
      title: Text(coin.name, style: theme.textTheme.bodyMedium),
      trailing:Text(coin.priceInUSD.toString(), style: const TextStyle(color: Colors.yellow, fontFamily: 'Roboto')),
      onTap: (){
        Navigator.of(context).pushNamed(
          '/coin',
          arguments: coin

        );
      },
    );
  }
}