import 'package:flutter/material.dart';

import '../../Styles.dart';
import '../../models/rideModel.dart';
import '../../widgets/ratingBar/ratingBar.dart';

class HistoryCard extends StatelessWidget {
  final RideModel ride;
  const HistoryCard({Key? key, required this.ride}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        elevation:5,shadowColor:Colors.grey.shade300,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(this.ride.from),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      margin: EdgeInsets.only(
                          left: 10, top: 0, right: 0, bottom: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                            11,
                            (index) => Expanded(
                                  child: Container(
                                    color: index % 2 == 0
                                        ? Colors.transparent
                                        : Colors.grey.shade300,
                                    height: 1,
                                    width: 2,
                                  ),
                                )),
                      ),
                    ),
                    Row(
                      children: [
                        Transform.rotate(
                          angle: -45,
                          child: Icon(Icons.send_outlined,
                              color: ThemeColors.primaryColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(this.ride.to),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(this.ride.date),
                  SizedBox(
                    height: 12,
                  ),
                  ratingBar(rating: this.ride.rating, size: 15),
                  SizedBox(
                    height: 12,
                  ),
                  Text(this.ride.price)
                ],
              )
            ],
          ),
        ));
  }
}
