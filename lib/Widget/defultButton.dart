import 'package:flutter/material.dart';
import 'package:youtubechatapp/Widget/constColor.dart';

class DefultButton extends StatelessWidget {
  const DefultButton({
    Key? key,
    this.text,
    this.onpress,
  }) : super(key: key);
  final String? text;
  final Function? onpress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress as void Function()?,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width*0.95,
        decoration: BoxDecoration(
            color: primaryColor,
          borderRadius: BorderRadius.circular(40)
        ),
        child: Center(
            child: Text(
          text!,
          style: TextStyle(
            color:Colors.white,
          fontSize: 25,fontWeight: FontWeight.bold
        ),)),

      ),
    );
  }
}
