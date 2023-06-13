import 'dart:async';

import 'package:coffee_project/const_var.dart';
import 'package:coffee_project/pages/coffee.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  Timer? _timer;
  double _scrollPosition = 0;
  double scrollSpeed = 1;
  bool userTouchedScreen = false;
  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(
      const Duration(milliseconds: 13),
      (_) {
        setState(
          () {
            _scrollPosition += scrollSpeed;

            if (_scrollPosition >= _scrollController.position.maxScrollExtent) {
              _scrollPosition = 0;
            }

            if (userTouchedScreen) {
              _stopAutoScroll();
            }

            _scrollController.jumpTo(_scrollPosition);
          },
        );
      },
    );
  }

  void _stopAutoScroll() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: "Coffee",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0,
                  color: ConstColors.boxes,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: " House",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20.0,
                  color: ConstColors.buttons,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const <Widget>[
          Icon(
            Icons.notifications,
            color: ConstColors.boxes,
            size: 30.0,
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 120.0,
                width: 180.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(
                      "assets/images/bg.jpg",
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Deal of the day\n20% off",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 120.0,
                width: 180.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(
                      "assets/images/bg.jpg",
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Buy 1 get 1 FREE\nuse code :B1G1",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 45.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: ConstColors.boxes,
                    width: 2.0,
                  ),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    const Text(
                      "Search for anything",
                      style: TextStyle(
                        color: ConstColors.icons,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: ConstColors.buttons,
                        border: Border.all(
                          color: ConstColors.boxes,
                          width: 2.0,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 45.0,
                width: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: ConstColors.buttons,
                  border: Border.all(
                    color: ConstColors.boxes,
                    width: 2.0,
                  ),
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.shuffle_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 40.0,
                width: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  border: Border.all(
                    color: ConstColors.boxes,
                    width: 2.0,
                  ),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "All",
                  style: TextStyle(
                    color: ConstColors.boxes,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 40.0,
                width: 110.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: ConstColors.buttons,
                  border: Border.all(
                    color: ConstColors.boxes,
                    width: 2.0,
                  ),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Cuppuccino",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 40.0,
                width: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  border: Border.all(
                    color: ConstColors.boxes,
                    width: 2.0,
                  ),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Latte",
                  style: TextStyle(
                    color: ConstColors.boxes,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 40.0,
                width: 90.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  border: Border.all(
                    color: ConstColors.boxes,
                    width: 2.0,
                  ),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Espresso",
                  style: TextStyle(
                    color: ConstColors.boxes,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTapDown: (details) {
                  _stopAutoScroll();
                  setState(
                    () {
                      userTouchedScreen = true;
                      //after 2 seconds autoscroll will active
                      Future.delayed(
                        const Duration(
                          seconds: 3,
                        ),
                        () {
                          _startAutoScroll();
                          userTouchedScreen = false;
                        },
                      );
                    },
                  );
                },
                // onTapUp: (details) {
                //   _startAutoScroll();
                //   setState(
                //     () {
                //       userTouchedScreen = false;
                //     },
                //   );
                // },
                child: ListView(
                  controller: _scrollController,
                  physics: const BouncingScrollPhysics(),
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    coffeeBoxes(
                      name: "Cocoa\nCappuccino",
                      cost: r"$3.38",
                    ),
                    const SizedBox(
                      width: 40.0,
                    ),
                    coffeeBoxes(
                      name: "Cramel\nCappuccino",
                      cost: r"$6.20",
                    ),
                    const SizedBox(
                      width: 40.0,
                    ),
                    coffeeBoxes(
                      name: "Simple\nCappuccino",
                      cost: r"$2.40",
                    ),
                    const SizedBox(
                      width: 40.0,
                    ),
                    coffeeBoxes(
                      name: "Double\nCappuccino",
                      cost: r"$10.00",
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            height: 52.0,
            width: 350.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: ConstColors.buttons,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: ConstColors.icons,
                  size: 30.0,
                ),
                Icon(
                  Icons.shopping_cart,
                  color: ConstColors.icons,
                  size: 30.0,
                ),
                Icon(
                  Icons.favorite,
                  color: ConstColors.icons,
                  size: 30.0,
                ),
                Icon(
                  Icons.person,
                  color: ConstColors.icons,
                  size: 30.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Stack coffeeBoxes({
    required String name,
    required String cost,
  }) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          height: 250.0,
          width: 160.0,
          decoration: BoxDecoration(
            boxShadow: const <BoxShadow>[
              BoxShadow(
                blurRadius: 10.0,
              ),
            ],
            borderRadius: BorderRadius.circular(12.0),
            gradient: const LinearGradient(
              colors: <Color>[
                ConstColors.boxes,
                ConstColors.buttons,
              ],
            ),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                cost,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Lighty sweetened\nwith chocolate sauce",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -65.0,
          left: 20.0,
          right: 20.0,
          child: SizedBox(
            height: 130.0,
            width: 100.0,
            child: Image.asset(
              "assets/images/coffee.png",
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 60.0,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const Coffee();
                  },
                ),
              );
            },
            child: ClipOval(
              child: Container(
                height: 40.0,
                width: 40.0,
                color: ConstColors.buttons,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
