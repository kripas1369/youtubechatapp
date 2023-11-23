import 'package:flutter/material.dart';
import 'package:youtubechatapp/PrimaryScreen/LoginScreen/loginScreen.dart';
import 'package:youtubechatapp/SecondaryScreen/HomeScreen/homeScreen.dart';
import 'package:youtubechatapp/Widget/defultButton.dart';
import 'package:youtubechatapp/Widget/textfieldWidgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _formkey =GlobalKey<FormState>();
  final mobileController = TextEditingController();
  final passwordController =TextEditingController();
  final fullnameController =TextEditingController();
  final conformpasswordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 90,),
                  Text("Register",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("Please enter you registered mobile number or email to login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black45),),
                  SizedBox(height: 50,),
                  Text("Email",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  TextFormField(
                    controller: mobileController,
                    decoration: customDecoration(
                       "Please enter mobile number",
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Please enter you mobile number";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  Text("Fullname",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  TextFormField(
                    controller: fullnameController,
                    decoration: customDecoration(
                    "Please enter Full name",
                      // border: OutlineInputBorder( borderRadius: BorderRadius.circular(90)
                      // ),
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Please enter you  Full name";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  Text("Password",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  TextFormField(
                    controller: passwordController,
                    decoration:customDecoration(
                   "Please enter Password",
                      // border: OutlineInputBorder( borderRadius: BorderRadius.circular(90)
                      // ),
                    ), validator: (value){
                    if(value==null || value.isEmpty){
                      return "Please enter you Password";
                    }
                    return null;
                  },
                  ),
                  SizedBox(height: 20,),
                  Text("Conform Password",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  TextFormField(
                    controller: conformpasswordController,
                    decoration: customDecoration(
                   "Please enter Conform Password",
                      // border: OutlineInputBorder( borderRadius: BorderRadius.circular(90)
                      // ),
                    ), validator: (value){
                    if(value==null || value.isEmpty){
                      return "Please enter you Conform Password";
                    }
                    return null;
                  },
                  ),
                  SizedBox(height: 30,),
          
          
                  DefultButton(
                    text: "Register",
                    onpress: ()async{
                      if(_formkey.currentState!.validate()){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Homepage()),
                        );
          
                      };
                    },
                  ),
          
          
          
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Text("Already hava an account?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black45),),
                      Spacer(),
          
                      InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>LoginScreen()),
                            );
                          },
                          child: Text("Login",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black45),)),
                    ],
                  ),
          
          
          
                ],
              ),
            ),
          ),
        )
    );
  }
}
