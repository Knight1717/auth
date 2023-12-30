import 'package:authentication/global/comman/toast.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final formKey = GlobalKey<FormState>();
  final emailcontro = TextEditingController();

  @override
  void dispose(){
    emailcontro.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest Password"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: TextFormField(
                controller: emailcontro,
                decoration: InputDecoration(hintText: "  Email  "),
                validator: (email)=>
                    email != null && !EmailValidator.validate(email)
                  ? 'Enter a valid email' : null,
              ),
            ),
            SizedBox(height: 20,),

            Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
                    onPressed: resetPassword, child: Text("Reset Password"))),
          ],
        ),
      ),
    );
  }
  Future resetPassword() async{
    showDialog(
        context: context,
        builder: (context) => Center(child: CircularProgressIndicator(),));
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
          email: emailcontro.text.trim());

      showToast(message: "Forgot Password Email Sent");
      Navigator.of(context).popUntil((route) => route.isFirst);
    } on FirebaseAuthException catch(e){
      print(e);
       showToast(message: e.message.toString());
       Navigator.of(context).pop();
    }
  }
}
