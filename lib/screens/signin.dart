import 'package:flutter/material.dart';
import '../../widgets/button/button.dart';
import '../../widgets/defultInput/inputField.dart';
import '../Styles.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
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
          Text(
            'Welcome Back !',
             style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
          ),
          Text('Login to continue using BebaMzigo'),
          SizedBox(
            height: 20,
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: DefaultInput(
                        controller: emailTextController,
                        hintText: 'email',
                        validator: validator,
                        icon: Icons.email_outlined,
                      )),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: DefaultInput(
                        controller: emailTextController,
                        hintText: 'password',
                        validator: validator,
                        isPassword: true,
                        icon: Icons.lock,
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('forgot password',style: TextStyle(color: Colors.grey)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: DefaultButton( 
                      handlePress: () {Navigator.pushNamed(context, '/rating');},
                      text: 'Log in',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text('New a User ? ',
                              style: TextStyle(color: Colors.grey)),
                          InkWell(
                            onTap: (){
                               Navigator.pushNamed(context, '/signup');
                            },
                            child: Text('Sign up for a new account',
                                style: TextStyle(
                                    color: ThemeColors.primaryColor,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ]),
                  )
            
                ],
              ),
            ),
            
          ),
        ])))));
  }
}
