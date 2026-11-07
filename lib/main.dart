import 'package:flutter/material.dart';
import 'package:navigation_vertical/product_details_hero/product_grid_screen.dart';
import 'package:navigation_vertical/profile_card/animated_card_demo.dart';
import 'package:navigation_vertical/profile_card/profile_card.dart';
import 'package:navigation_vertical/screen/dashboard_screen.dart';
import 'package:navigation_vertical/screen/home_screen.dart';
import 'package:navigation_vertical/screen/profile_screen.dart';
import 'package:navigation_vertical/screen/wallet_screen.dart';
import 'package:navigation_vertical/widget/custom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductGridPage(),
      // home: AnimatedCardDemo(),
      // home: ProfileCard(),
      // home: CustomNavigationBar(),
    );
  }
}




class MyAppMainScreenState extends StatefulWidget {
  const MyAppMainScreenState({super.key});

  @override
  State<MyAppMainScreenState> createState() => MyAppMainScreenStateState();
}


class MyAppMainScreenStateState extends State<MyAppMainScreenState> {


  int selectedIndex = 0 ;

  final List<IconData> icons = const [
    Icons.home_rounded,
    Icons.bar_chart_rounded,
    Icons.account_balance_wallet_rounded,
    Icons.person_rounded,
  ];

  final List<Widget> screens = [
    const HomeScreen(),
    const DashboardScreen(),
    const WalletScreen(),
    const ProfileScreen(),
  ];

  bool isNavVisible = false ;

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Stack(
        children: [          

          GestureDetector(
            onDoubleTap:(){
              setState(() {
                isNavVisible = !isNavVisible ; 
              });
            } ,
            
            child: IndexedStack(
              index: selectedIndex,
              children: screens,
            ),
          ),

          CustomNavigationBar(
            isVisible: isNavVisible,
            selectedIndex: selectedIndex, 
            icons: icons, 
            onItemSelected: (value) {
              setState(() {
                selectedIndex = value ;
              });
            },
          )
          
        ],
      )
    );
  }
}