import 'package:flutter/material.dart';
import 'package:youtubechatapp/PrimaryScreen/RegisterScreen/registerScreen.dart';
import 'package:youtubechatapp/SecondaryScreen/HomeScreen/homeScreen.dart';
import 'package:youtubechatapp/Widget/constColor.dart';
import 'package:youtubechatapp/Widget/defultButton.dart';
import 'package:youtubechatapp/Widget/textfieldWidgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formkey =GlobalKey<FormState>();
  final mobileController = TextEditingController();
  final passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Please enter you registered mobile number or email to login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black45),),
              SizedBox(height: 50,),
              Text("Email",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              TextFormField(
                controller: mobileController,
                decoration: customDecoration(
                  "Please enter you mobile number"
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please enter you mobile number";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              Text("Password",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              TextFormField(
                controller: passwordController,
                decoration: customDecoration("Please enter you Password"),
                validator: (value){
                if(value==null || value.isEmpty){
                  return "Please enter you Password";
                }
                return null;
              },
              ),
              SizedBox(height: 20,),
              // MaterialButton(
              //   color: primaryColor,
              //   height: 60,
              //   minWidth: 400,
              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              //   onPressed: ()async{
              //     if(_formkey.currentState!.validate()){
              //       Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => Homepage()),
              //     );
              //
              //     };
              //   },
              //   child: Text("Login",style: TextStyle(fontSize: 24,color:Colors.white ),),),
              // SizedBox(height: 12,),
              DefultButton(
                text: "Login",
                onpress:()async{
                  if(_formkey.currentState!.validate()){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );

                  };
                },
              ),   SizedBox(height: 20,),
              DefultButton(
                text: "Register",
                onpress:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      )
      );
  }
}
