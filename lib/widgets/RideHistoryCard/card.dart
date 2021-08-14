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
        elevation: 5,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.location_on),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(this.ride.from),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.55),
                    Text(this.ride.date)
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [ratingBar(rating: this.ride.rating, size: 15)]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.send_outlined, color: ThemeColors.primaryColor),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(this.ride.to),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.5),
                    Text(this.ride.price)
                  ],
                ),
              )
            ]));
  }
}
