import 'package:beba_mzigo/Styles.dart';
import 'package:flutter/material.dart';
import '../../widgets/button/button.dart';
import '../../widgets/defultInput/inputField.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  final TextEditingController emailTextController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This value is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                    child: Column(children: [
          Center(
            heightFactor: 3,
            child: Image.asset(
              'assets/images/truck.png',
              height: 50,
              width: 195,
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Welcome Aboard!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Text(
            'SignUp with BebaMzigo',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: DefaultInput(
                        controller: emailTextController,
                        hintText: 'User Name',
                        validator: validator,
                        icon: Icons.person_outline,
                      )),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: DefaultInput(
                        controller: emailTextController,
                        hintText: 'Email',
                        validator: validator,
                        icon: Icons.email_outlined,
                      )),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: DefaultInput(
                        controller: emailTextController,
                        hintText: 'Password',
                        validator: validator,
                        isPassword: true,
                        icon: Icons.lock_outline,
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: DefaultButton(
                      handlePress: () {
                        print('testroute');
                        Navigator.pushNamed(context, '/signin');
                      },
                      text: 'Sign Up',
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text('Already a User ? ',
                            style: TextStyle(color: Colors.grey)),
                        InkWell(
                          onTap: (){
                             Navigator.pushNamed(context, '/signin');
                          },
                          child: Text('Login now',
                              style: TextStyle(
                                  color: ThemeColors.primaryColor,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ])),
                ],
              ),
            ),
          ),
        ])))));
  }
}
