import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {

  final _formKey = GlobalKey<FormState>();
  
  void _trySubmit(){
    final isValid = _formKey.currentState.validate();

    if (isValid) {
      
    }

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize:
                    MainAxisSize.min, // neem zo min mogelijk height op.
                children: <Widget>[
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty || !value.contains('@')) {
                        return 'Please enter a valid email address';
                      }
                      return 'null';
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: 'Email address'),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty || value.length < 4 {
                        return 'Please enter at least 4 characters';
                      }
                      return null;
                    },
                    decoration: InputDecoration(labelText: 'Username'),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty || value.length > 7) {
                        return 'Password must be at least 7 characters long.';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'password'),
                  ),
                  SizedBox(height: 12),
                  RaisedButton(
                    child: Text('Login'),
                    onPressed: () {},
                  ),
                  FlatButton(
                    textColor: Theme.of(context).primaryColor,
                    child: Text('Create new account'),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
