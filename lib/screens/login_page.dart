import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();

  final _loginKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),

        child: Form(
          key: _loginKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email"
                ),
                controller: _emailController,
                validator: (value){

                  if(value!.isEmpty){

                    return "Filed is Mandatory";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Password"
                ),
                controller: _passwordController,
                validator: (value){

                  if(value!.isEmpty){

                    return "Filed is Mandatory";
                  }
                },
              ),

              SizedBox(height: 20,),

              ElevatedButton(onPressed: (){




                if(_loginKey.currentState!.validate()){



                  // take the values form the controllers

                  // user model

                  // service the class






                }



              }, child: Text("Login")),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ElevatedButton(onPressed: (){


                    Navigator.pushNamed(context, 'register');




                  }, child: Text("Register"))
                ],
              )


            ],
          ),
        ),

      ),
    );
  }
}
