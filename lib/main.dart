import 'package:flutter/material.dart';
import 'package:nomad_coder/widgets/currency_card.dart';

import 'widgets/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                        text: 'Transfer',
                        bgColor: Color(0xFFF1B33B),
                        textColor: Colors.black),
                    Button(
                        text: 'Request',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6 428',
                    icon: Icons.euro_rounded),
                CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 785',
                  icon: Icons.currency_bitcoin_rounded,
                  isInverted: true,
                  order: 2,
                ),
                CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '6 428',
                    icon: Icons.attach_money_rounded,
                    order: 3,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
