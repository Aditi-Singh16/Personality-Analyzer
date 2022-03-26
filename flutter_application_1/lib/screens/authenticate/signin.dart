
import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/auth.dart';


class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({required this.toggleView });

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff5fa8d3),
        elevation: 0.0,
        title: const Text('Sign in',style:TextStyle(fontFamily: 'EBGaramond',fontSize: 25,color:Color.fromARGB(255, 255, 255, 255))),
        actions: <Widget>[
          FlatButton.icon(
            icon: const Icon(Icons.person,color: Color.fromARGB(255, 255, 255, 255) ,),
            label: const Text('Register',style:TextStyle(fontFamily: 'EBGaramond',fontSize: 25,color:Color.fromARGB(255, 255, 255, 255))),
            onPressed: () => widget.toggleView(),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                 decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.black, fontSize: 20,fontFamily: 'EBGaramond'),
              ),
                validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                 decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.black, fontSize: 20,fontFamily: 'EBGaramond'),
              ),
                validator: (val) => val!.length < 6 ? 'Enter a password 6+ chars long' : null,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
            const  SizedBox(height: 20.0),
              RaisedButton(
                color:const Color(0xff5fa8d3),
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontFamily: 'EBGaramond',fontSize: 25,color:Color.fromARGB(255, 255, 255, 255)),
                ),
                padding: EdgeInsets.all(15),
                onPressed: () async {
                  if(_formKey.currentState!.validate()){
                    dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                    if(result == null) {
                      setState(() {
                        error = 'Could not sign in with those credentials';
                      });
                    }
                   
                   
                      
                    
                
                  }
                }
              ),
             const SizedBox(height: 12.0),
              Text(
                error,
                style:const TextStyle(color: Colors.red, fontSize: 14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}