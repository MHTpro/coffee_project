import 'package:coffee_project/const_var.dart';
import 'package:flutter/material.dart';

class Coffee extends StatefulWidget {
  const Coffee({super.key});

  @override
  State<Coffee> createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
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
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: ConstColors.boxes,
          ),
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 240.0,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/coffee.png",
                  fit: BoxFit.cover,
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Select size",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: ConstColors.boxes,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  coffeeSize(
                    size: "Small\n250 ml",
                  ),
                  coffeeSize(
                    size: "Medium\n450 ml",
                  ),
                  coffeeSize(
                    size: "Large\n650 ml",
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Customize",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: ConstColors.boxes,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  optionForCoffee(
                    text: r"Cream $0.8",
                  ),
                  optionForCoffee(
                    text: r"Almond $1.2",
                  ),
                  optionForCoffee(
                    text: r"Cake $3.4",
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "About",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: ConstColors.boxes,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                '''
Variations of the drink involve the use of cream instead of milk, using non-dairy milk substitutes and flavoring with cinnamon (in the United States) or chocolate powder (in Europe).It is typically smaller in volume than a caffè latte, with a thicker layer of microfoam.''',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black26,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: ConstColors.buttons,
                    child: Icon(
                      Icons.remove,
                      color: ConstColors.icons,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "1",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: ConstColors.icons,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  CircleAvatar(
                    backgroundColor: ConstColors.buttons,
                    child: Icon(
                      Icons.add,
                      color: ConstColors.icons,
                    ),
                  ),
                  SizedBox(
                    width: 180.0,
                  ),
                  Text(
                    r"$3.28",
                    style: TextStyle(
                      fontSize: 26.0,
                      color: ConstColors.icons,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ConstColors.buttons,
                  minimumSize: const Size(320.0, 40.0),
                ),
                child: const Text(
                  "Add to cart",
                  style: TextStyle(
                    color: ConstColors.icons,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container optionForCoffee({required String text}) {
    return Container(
      height: 30.0,
      width: 100.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        border: Border.all(
          color: ConstColors.boxes,
          width: 2.0,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 15.0,
          color: ConstColors.boxes,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Container coffeeSize({required String size}) {
    return Container(
      height: 80.0,
      width: 110.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: const LinearGradient(
          colors: <Color>[
            ConstColors.boxes,
            ConstColors.icons,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const Icon(
            Icons.coffee,
            color: Colors.white,
            size: 30.0,
          ),
          Text(
            size,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          )
        ],
      ),
    );
  }
}
