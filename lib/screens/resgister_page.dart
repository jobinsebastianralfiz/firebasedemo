import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  TextEditingController _nameController=TextEditingController();
  TextEditingController _phoneController=TextEditingController();

  final _regKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),

        child: Form(
          key: _regKey,
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
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Name"
                ),
                controller: _nameController,
                validator: (value){

                  if(value!.isEmpty){

                    return "Filed is Mandatory";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Phone"
                ),
                keyboardType: TextInputType.phone,
                controller: _phoneController,
                validator: (value){

                  if(value!.isEmpty){

                    return "Filed is Mandatory";
                  }
                },
              ),

              SizedBox(height: 20,),

              ElevatedButton(onPressed: (){




                if(_regKey.currentState!.validate()){



                  // take the values form the controllers

                  // user model

                  // service the class






                }



              }, child: Text("Register")),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ElevatedButton(onPressed: (){


                    Navigator.pop(context);




                  }, child: Text("Login"))
                ],
              )


            ],
          ),
        ),

      ),
    );
  }
}
