import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:splash_example/onboard/onBoard_model.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemCount: models.length,
        itemBuilder: (_, i) {
          return Padding(
            padding: EdgeInsets.all(35),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  child: Image.asset(models[i].image),
                )),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              models.length, (index) => buildDotMenu(index)),
                        ),
                        Text(
                          models[i].title,
                          style: TextStyle(
                            fontSize: context.mediumValue,
                          ),
                        ),
                        SizedBox(
                          height: context.mediumValue,
                        ),
                        Text(models[i].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: context.normalValue,
                            )),
                        Container(
                          height: 50,
                          width: double.infinity,
                          margin: EdgeInsets.all(35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("Skip"),
                                style: ElevatedButton.styleFrom(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 40),
                                    primary: Colors.red[100]),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  if (currentIndex == models.length - 1) {}
                                  _controller.nextPage(
                                    duration: Duration(milliseconds: 50),
                                    curve: Curves.bounceIn,
                                  );
                                },
                                child: Text("Next"),
                                style: ElevatedButton.styleFrom(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 40),
                                    primary: Colors.redAccent),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Container buildDotMenu(int index) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.redAccent, borderRadius: BorderRadius.circular(20)),
      height: 10,
      width: currentIndex == index ? 20 : 10,
    );
  }
}
