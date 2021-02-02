import 'package:flutter/material.dart';
import 'package:login_stateful/src/mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  // TODO: 1.) CREATE THE FORM KEY AND DEFINED IT AS GLOBAL KEY
  final formKey = GlobalKey<FormState>();

  // send both email and password
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        // TODO: 2.) DEFINE KEY WITH FORM KEY
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            SizedBox(
              width: 10.0,
              height: 10.0,
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  // helper methods for fields and submit button
  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: validateEmal,
      onSaved: (String value) {
        // assigned email associated that we created above
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      obscureText: true,
      validator: validatePassword,
      onSaved: (String value) {
        // assigned password assicoated that we created above
        password = value;
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        // TODO: 3.) USE formKey with reset() to reset the form
        if (formKey.currentState.validate()) {
          // to save and retrieved the value after validate
          formKey.currentState.save();
          print('Time to post $email and $password to my API');
        }
      },
      child: Text('Submit'),
    );
  }
}
