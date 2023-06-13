// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(App()); // root Widget
}

// StatelessWidget: core Widget of the flutter.
// App Widget is the root of the application. It is starting point of the application.
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // throw UnimplementedError();
    // material -> Google's design system
    // cupertino -> Apple's design system (ios)
    // choose the base UI settings
    // return CupertinoApp()`;
    // return const MaterialApp();

    // scaffold: structure of the screen
    // navigation bar, bottom bar, tob bar, center of screen ...
    return MaterialApp(
      home: Scaffold(
          // appBar: AppBar(
          //   // actions: [],
          //   // elevation: 99, // shadow
          //   // centerTitle: true,
          //   title: Text('Hello flutter!'),
          // ),
          // body: Center(
          //   child: Text('Hello world!'),
          // ),
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
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
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ]),
                  const SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '\$5 194 482',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Wallets',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                          )),
                      Text('View All',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amout: '6 428',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    offsetY: 0,
                  ),
                  const CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amout: '9 648',
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                    offsetY: -20,
                  ),
                  const CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amout: '8 223',
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                    offsetY: -40,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

// class MyButton extends StatelessWidget {
//   const MyButton({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // button
//       decoration: BoxDecoration(
//         color: Color(0xFF1F2123),
//         borderRadius: BorderRadius.circular(45),
//       ),
//       child: const Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: 45,
//           vertical: 17,
//         ),
//         child: Text(
//           'Transfer',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//           ),
//         ),
//       ),
//     );
//   }
// }
