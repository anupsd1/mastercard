import 'package:flutter/material.dart';
import 'package:mastercard/data.dart';

import 'cardDetails.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: Text(
              "Selected Card",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, i) {
                return Container(
                  width: MediaQuery.of(context).size.width - 50, // WRITE ABOUT THIS
//                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  margin: EdgeInsets.fromLTRB(20, 40, 20, 40),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: primaryColor,
                    boxShadow: customShadow,
                    borderRadius: BorderRadius.circular(20.0),
                  ),

                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                          top: 150,
                          bottom: -200,
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: customShadow,
                                shape: BoxShape.circle,
                                color: Colors.white38,
                            ),
                          )
                      ),
                      Positioned.fill(
                          left: -300,
                          top: -100,
                          bottom: -100,
                          child: Container(
                              decoration: BoxDecoration(
                                boxShadow: customShadow,
                                shape: BoxShape.circle,
                                color: Colors.white38
                              ),
                          )
                      ),
                      CardDetails()

                    ],
                  ),
                );
            },
          ),
        )
      ],
    );
  }
}
