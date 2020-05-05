import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groupshare/core/excpetions/exceptions.dart';
import 'package:groupshare/core/viewmodels/login_model.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/ui/views/base_view.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginModel>(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: LoginForm(),
          ),
        );
      },
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String _email;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value.isEmpty) return "Email cannot be empty";
              return null;
            },
            onSaved: (value) => _email = value,
            decoration: InputDecoration(
              hintText: 'Email',
              prefixIcon: Icon(Icons.mail),
            ),
          ),
          RaisedButton(
            child: Text("Send login email"),
            onPressed: (() async {
              final model = locator<LoginModel>();
              final FormState form = _formKey.currentState;
              if (!form.validate()) {
                return;
              }
              form.save();
              try {
                await model.sendEmail(_email);
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/auth',
                  (_) => false,
                );
              } on UserException catch (ex) {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(ex.message),
                ));
              }
//              } catch (ex) {
//                Scaffold.of(context).showSnackBar(SnackBar(
//                  content: Text("Error"),
//                ));
//              }
            }),
          ),
        ],
      ),
    );
  }
}
