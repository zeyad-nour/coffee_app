import 'package:cofee_app/components/qty_widget.dart';
import 'package:cofee_app/model.dart';
import 'package:cofee_app/components/toggle.dart';
import 'package:flutter/material.dart';

class DrinkDetails extends StatefulWidget {
  const DrinkDetails({super.key});

  @override
  State<DrinkDetails> createState() => _DrinkDetailsState();
}

class _DrinkDetailsState extends State<DrinkDetails> {
  final PageController _controller = PageController(viewportFraction: 0.5);
  double _currentpage = 0;
  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        _currentpage = _controller.page ?? 1;
      });
    });
    super.initState();
  }

  int selectedIndex = 0;

  final drinks = DrinkModel.drink;

  List<Icon> sizeSelected = [
    Icon(Icons.coffee, size: 10),
    Icon(Icons.coffee, size: 15),
    Icon(Icons.coffee, size: 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          Positioned(
            top: 80,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      drinks[_currentpage.round()].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(drinks[_currentpage.round()].title),
                  ],
                ),
                Text(
                  "# ${drinks[_currentpage.round()].Price}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),

          PageView.builder(
            controller: _controller,
            itemCount: DrinkModel.drink.length,
            itemBuilder: (context, index) {
              final scale = 1 - (_currentpage - index).abs() * 1;
              final translaty = (_currentpage - index).abs() * 400;
              return Transform.translate(
                offset: Offset(translaty, 0),
                child: Transform.scale(
                  scale: scale.clamp(0.5, 1.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            drinks[index].Image,
                            height: 800,
                            fit: BoxFit.contain,
                          ),
                          Positioned(
                            bottom: 201,
                            right: 0,
                            left: 0,
                            child: Container(
                              width: 70,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black87,
                                    blurRadius: 80,
                                    spreadRadius: 12,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),

          ///////////////////
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(3, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black87),
                            color:
                                selectedIndex == index
                                    ? Colors.orange
                                    : Colors.white,
                          ),
                          child: Icon(
                            Icons.coffee,
                            color:
                                selectedIndex == index
                                    ? Colors.white
                                    : Colors.black54,
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: ToggleWidget()),
                      // SizedBox(width: 20),
                      Expanded(child: QtyWidget()),
                    ],
                  ),
                ],
              ),
            ),
          ),

          //Order Button
          Positioned(
            top: 750,
            left: 20,
            right: 0,
            bottom: 0,
            child: SizedBox(
              width: 100,
              height: 50,
              child: IconButton(
                onPressed: () {
                  print("Order Now");
                },
                icon: Icon(
                  Icons.online_prediction_sharp,
                  size: 40,
                  color: Colors.orange,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}















