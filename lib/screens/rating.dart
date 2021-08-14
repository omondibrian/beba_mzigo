import 'package:beba_mzigo/Styles.dart';
import 'package:flutter/material.dart';

import '../../widgets/button/button.dart';
import '../../widgets/defultInput/inputField.dart';
import '../../widgets/ratingBar/ratingBar.dart';

class RatingScreen extends StatelessWidget {
  RatingScreen({Key? key}) : super(key: key);
  final String driverName = 'Ann Wangari';
  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This null feedBack cannot be added';
    }
    return null;
  }

  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('BebaMzigo'),
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
        child: Column(children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Ride complete',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: ThemeColors.h1Color
                    ),
                  ),
                ),
                Text(
                  'Rate your Last Delevery Ride\n with $driverName',
                  style: TextStyle(color: ThemeColors.h2,),textAlign: TextAlign.center,
                ),
                SizedBox(height: 40,),
                CircleAvatar(
                  minRadius: 42,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/yuna.jpg",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('$driverName'),
                ),
                ratingBar(rating: 4.0,size: 30),
                SizedBox(height: 10.0,),
                Form(
                    child: Column(
                  children: [
                    SizedBox(
                       width: MediaQuery.of(context).size.width * 0.8,
                      child: DefaultInput(
                        controller: _textController,
                        hintText: 'FeedBack',
                        validator: validator,
                        icon: Icons.email_outlined,
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                       width: MediaQuery.of(context).size.width * 0.8,
                      child: DefaultButton(
                        handlePress: () {Navigator.pushNamed(context, '/history');},
                        text: 'Submit FeedBack',
                      ),
                    )
                  ],
                ))
              ],
            ),
          ),
          Text('Skip feedBack')
        ]),
      )),
    );
  }
}
