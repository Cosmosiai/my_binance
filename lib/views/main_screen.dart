import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../repos/crypto_coins/crypto_coins_repo.dart';
import '../models/CryptoCoinModel.dart';
import '../widgets/crypto_list_tile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.title});

  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<CryptoCoin>? _cryptoCoinList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: null, icon: Icon(Icons.account_circle, color: Colors.yellow,),
          ),
          actions: [
            IconButton(onPressed: null, icon: Icon(Icons.search)),
            IconButton(onPressed: null, icon: Icon(Icons.control_camera_rounded))
        ],
        ),
        body:(_cryptoCoinList==null) ? const SizedBox():

        ListView.separated(
            separatorBuilder: (context, index) =>Divider(),
            itemCount: _cryptoCoinList!.length,
            itemBuilder: (context, i){
              final coin = _cryptoCoinList![i];
              final coinName=coin.name;
              return CryptoListTile(coin: coin);
            }
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.download),
          onPressed: () async {
            _cryptoCoinList = await CryptoCoinsRepository().getCoinsList();
            setState(() {

            });
          },
        ),
        bottomNavigationBar: const GNav(
          // hoverColor: Colors.grey,
          activeColor: Colors.black,
          color: Colors.grey,
          tabs: [
            GButton(icon: Icons.home),
            GButton(icon: Icons.api_rounded, iconColor: Colors.yellowAccent,),
            GButton(icon: Icons.account_balance_wallet_rounded)
          ]),
    );
  }
}