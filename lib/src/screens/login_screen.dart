import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  createState(){
    return LoginScreenState();
  }
}


class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  
  Widget build(context){  
    return Scaffold(
          body: Container(    
          //margin: EdgeInsets.all(20.0),
          //padding: EdgeInsets.all(18.0),
            child: Form(  
              key: formKey,
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        //margin: EdgeInsets.only(bottom:40.0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(15.0, 100.0, 0.0, 0.0),
                              child: Text(
                                'Hello!',
                                  textAlign : TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                            )
                          ]
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only(top:30.0, left:20.0, right:20.0),
                        child: Column(
                          children: <Widget>[
                            emailField(),
                            SizedBox(height:20.0),
                            passwordField(),
                          ]
                        ),
                      ),
                        
                        SizedBox(height:7.0),
                        Container(
                          alignment: Alignment(0.8, 0.0),
                          padding: EdgeInsets.only(top:10.0,left:20.0),
                          child: InkWell(
                            child: Text('Forgot Password.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                //fontFamily: 'Monserrat',
                                decoration: TextDecoration.underline
                              ),
                            ),
                            
                          ),
                        ),

                        SizedBox(height: 15.0),
                        Container(
                          height: 40.0,
                          width: 120.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            elevation: 7.0,
                            color: Colors.blue,
                            child: GestureDetector(
                              onTap: (){
                                 
                              },
                              child: Center(
                                child: submitField(),
                              ),
                            ),
                          ),
                        ),
                        
                        /* SizedBox(height: 20.0),
                        Container(
                          height: 40.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            elevation: 7.0,
                            child: GestureDetector(
                              onTap: (){},
                              child: Center(
                                child: Text('Log in with Facebook'),
                              ),
                            ),
                          ),
                        ), */
 
                                  
                    ]
                  ),
          
        ),
      ),
    ); 
  }

  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        icon: Icon(Icons.email),
        labelText: 'Email',
        labelStyle: TextStyle(
          //fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          color: Colors.grey
        ),
        hintText: 'you@example.com',
      ),

      validator: validateEmail,
      onSaved: (String value){
        email = value;
      },
    );
  }

  Widget passwordField(){
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        icon: Icon(Icons.lock),
        labelText: 'Password',
        labelStyle: TextStyle(
          //fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          color: Colors.grey
        ),
        hintText: 'Password',
      ),
      validator: validatePassword,
      onSaved: (String value){
        password = value;
      },
    );
  }

  Widget submitField(){
    return RaisedButton(
        color: Colors.blue,
        child: Text('LOG IN'),
        onPressed: () {
          if (formKey.currentState.validate()){
            formKey.currentState.save();
            print('Submitting inputs');
            Navigator.pushNamed(context, '/HomePage');
            formKey.currentState.reset();
          }
          
        },
      );
  }

}