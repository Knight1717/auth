import 'package:authentication/global/comman/toast.dart';
import 'package:authentication/registration.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'flutter_auth/flutter_auth_implementation.dart';
import 'forgot_password.dart';



class task extends StatefulWidget {
  const task({super.key});

  @override
  State<task> createState() => _taskState();
}



class _taskState extends State<task> {
  final formKey = GlobalKey<FormState>();
  String name="";
  String pass="";

  final FirebaseAuthServices auth = FirebaseAuthServices();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  TextEditingController Email = TextEditingController();
  TextEditingController Pass = TextEditingController();

  bool signingin = false;



  @override

  void dispose(){
    Email.dispose();
    Pass.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("User Login")),
        automaticallyImplyLeading: false,
      ),
      body:  Center(
        child: Container(
          height: 460,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [

                SizedBox(height: 40,),
                Container(
                  height: 70,
                  width: 300,
                  child: TextFormField(
                    controller: Email,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Email",
                        icon: Icon(Icons.person),
                      ),
                      validator: (x){

                        if(x == null || x.isEmpty)
                        {
                          return 'Enter email';
                        }
                        else if(!x.contains("@") || !x.contains(".")){
                          return "Enter valid email";
                        }
                        else if(x.length<3){
                          return "Minimum 3 characters";
                        }
                        return null;
                      }


                  ),
                ),SizedBox(height: 30,),
                Container(
                  height: 70,
                  width: 300,
                  child: TextFormField(
                    controller: Pass,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Password",
                        icon: Icon(Icons.lock),
                      ),
                      validator: (x){

                        if(x == null || x.isEmpty)
                        {
                          return 'Enter Password';
                        }
                        else if(x.length<8){
                          return "enter minimum 8 characters";
                        }
                        return null;
                      }


                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: signIn,
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.blue
                    ),
                    child: Center(child: signingin? CircularProgressIndicator(color: Colors.white,) :
                    Text("Signup",style: TextStyle(color: Colors.white,fontSize: 18),)),
                  ),
                ),
                SizedBox(height: 20,),

                GestureDetector(
                  onTap: (){
                    signinWithGoogle();
                  },
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.red
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.google,color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("google",style: TextStyle(color: Colors.white,fontSize: 18),),
                        ],
                      ),
                    ),
                    )
                  ),
                SizedBox(height: 20,),
                GestureDetector(
                  child: Text("Forgot Password",style: TextStyle(color: Colors.blue),),
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ForgotPassword())),
                ),
                SizedBox(height: 20,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> reg()));
                }, child: Text("Register",style: TextStyle(color: Colors.blue),))
              ],
            ),
          ),
        ),
      ),
    );
  }
  void signIn() async{

    setState(() {
      signingin = true;
    });

    String email = Email.text;
    String password = Pass.text;

    User? user = await auth.signInWithEmailAndPassword(email, password);

    setState(() {
      signingin = false;
    });

    if (user != null){
      showToast(message: "login successfully");
      Navigator.pushNamed(context, "/home");
    }
    else{
      showToast(message: "error occured");
    }
  }

  signinWithGoogle() async{

    final GoogleSignIn googleSignIn = GoogleSignIn();

    try{
      final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

      if(googleSignInAccount != null){
        final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );
        await _firebaseAuth.signInWithCredential(credential);
        Navigator.pushNamed(context, "/home");
      }
    }
    catch(e){
      showToast(message: "error occured $e");

    }
  }
}
