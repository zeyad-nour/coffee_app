import 'package:cofee_app/Drink_Details.dart';
import 'package:cofee_app/components/drink.dart';
import 'package:cofee_app/model.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                controller: controller,
                itemCount: DrinkModel.drink.length,

                itemBuilder: (context, index) {
                  final drink = DrinkModel.drink[index];
                  return AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) {
                      double offset = 0;
                      if (controller.hasClients) {
                        offset = controller.offset / 150 - index;
                      }
                      offset = offset.clamp(0, 2);
                      return Transform.scale(
                        scale: 1 - (offset * 0.2),
                        child: InkWell(
                          onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (c)=>DrinkDetails())),
                          child: Drink(
                            image: drink.Image,
                            name: drink.name,
                            title: drink.title,
                            price: drink.Price,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
