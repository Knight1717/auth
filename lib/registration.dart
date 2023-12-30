import 'package:authentication/database.dart';
import 'package:authentication/flutter_auth/flutter_auth_implementation.dart';
import 'package:authentication/global/comman/toast.dart';
import 'package:authentication/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final formKey = GlobalKey<FormState>();
String name="";
String email="";
String num="";

class reg extends StatefulWidget {
  const reg({super.key});

  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
  
  uploadData() async{
    Map<String, dynamic> uploaddata={
      "Name": Name.text,
      "Email": Email.text,
      "Password": Pass.text,
    };
    
    await Database().addUser(uploaddata);
    
  }
  
  final FirebaseAuthServices auth = FirebaseAuthServices();

  TextEditingController Name = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Pass = TextEditingController();

  bool signingup = false;

  @override

  void dispose(){
    Name.dispose();
    Email.dispose();
    Pass.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          height: 670,
          width: 370,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text("Register",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Name",style: TextStyle(fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                          height: 70,
                          width: 250,
                          child: TextFormField(
                            controller: Name,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Name",
                              ),
                              validator: (name)
                              {
                                if(name == null || name.isEmpty)
                                {
                                  return 'Enter name';
                                }
                                else if(name.length<3){
                                  return "Enter minimum 3 characters";
                                }
                                return null;
                              }
                          )),
                    ),
                  ],
                ),SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Email ",style: TextStyle(fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                          height: 70,
                          width: 250,
                          child: TextFormField(
                            controller: Email,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Email",
                              ),
                              validator: (email)
                              {
                                if(email == null || email.isEmpty)
                                {
                                  return 'Enter email';
                                }
                                else if(!email.contains("@") || !email.contains(".")){
                                  return "Enter valid email";
                                }
                                return null;
                              }
                          )),
                    ),
                  ],
                ),SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Pass  ",style: TextStyle(fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                          height: 70,
                          width: 250,
                          child: TextFormField(
                            controller: Pass,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Password",
                              ),
                              validator: (num)
                              {
                                if(num == null || num.isEmpty)
                                {
                                  return 'Enter phone number';
                                }
                                else if(num.length<10){
                                  return "Enter 10 digits";
                                }
                                return null;
                              }
                          )),
                    ),
                  ],
                ),SizedBox(height: 30,),

                // TextButton(onPressed: (){
                //   CollectionReference collRef = FirebaseFirestore.instance.collection('client');
                //   collRef.add({
                //     'name': Name.text,
                //     'email': Email.text,
                //     'mobile': Pass.text,
                //   });
                // }, child: Text("SignIn",style: TextStyle(fontSize: 20),))
                GestureDetector(
                  onTap: (){
                    signup();
                  },
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue
                    ),
                    child: Center(child: signingup ? CircularProgressIndicator(color: Colors.white,) : Text("Signup")),
                  ),
                ),
                SizedBox(height: 20,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> task()));
                }, child: Text("Alreay have an account",style: TextStyle(color: Colors.blue),))
              ],
            ),
          ),
        ),
      ),
    );
  }
  void signup() async{

    setState(() {
      signingup = true;
    });

    String name = Name.text;
    String email = Email.text;
    String password = Pass.text;

    User? user = await auth.signUpWithEmailAndPassword(email, password);

    setState(() {
      signingup = false;
    });

    if (user != null){
      showToast(message: "user created successfully");
      Navigator.pushNamed(context, "/home");
      uploadData();
    }
    else{
      showToast(message: "error occured");
    }
  }
}
