import 'package:flutter/material.dart';

import '../Styles.dart';
import '../models/rideModel.dart';
import '../widgets/RideHistoryCard/card.dart';

class RideHistory extends StatelessWidget {
  const RideHistory({Key? key}) : super(key: key);
  Widget showHistory(BuildContext ctx, int index) {
    return HistoryCard(ride: history[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('Ride History'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
            )
          ],
          automaticallyImplyLeading: true,
      
        ),
        body: SafeArea(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Showing Recent Rides',
                      style: TextStyle(
                          color: ThemeColors.primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: ListView.builder(
                            itemBuilder: showHistory,
                            itemCount: history.length))
                  ],
                ))));
  }
}


List<RideModel> history = [
  RideModel(
      from: 'home',
      to: 'city Market',
      date: '01 may 2021',
      rating: 4.5,
      price: 'ksh 1000'),
        RideModel(
      from: 'home',
      to: 'Sarit Center',
      date: '10 Aug 2021',
      rating: 3.0,
      price: 'ksh 1000')
];
