import 'package:flutter/material.dart';
import '../../Styles.dart';

class DefaultButton extends StatelessWidget {
  final void Function() handlePress;
  final String text;
  const DefaultButton({Key? key, required this.handlePress, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 395,height: 50,
      child: ElevatedButton(
        onPressed: this.handlePress,
        child: Text(this.text),
        style: Styles.buttonStyle,
      ),
    );
  }
}
