import 'package:flutter/material.dart';
import '../data.dart';
import 'pieChart.dart';

class ExpensesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child:
              Text('Expenses', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                      expenses.map((value) =>
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 5, backgroundColor: pieColors[expenses.indexOf(value)],
                            ),
                            Text(
                              value['name'],
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        )).toList(),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: PieChart(),
            )
          ],
        ),
      ],
    );
  }
}
