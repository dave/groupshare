import 'package:flutter/material.dart';
import 'package:groupshare/ui/appbar/appbar_view.dart';
import 'package:groupshare/ui/auth/auth_model.dart';
import 'package:groupshare/ui/base_view.dart';
import 'package:groupshare/ui/handle.dart';

class AuthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView('Log in'),
      body: Center(
        child: AuthForm(),
      ),
    );
  }
}

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  String _code;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BaseView<AuthModel>(
      builder: (context, model, child) {
        return Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.email),
                title: TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) return "Code cannot be empty";
                    return null;
                  },
                  onSaved: (value) => _code = value,
                  decoration: InputDecoration(
                    hintText: 'Code',
                  ),
                ),
              ),
              OutlineButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: Text("Login"),
                onPressed: (() async {
                  final FormState form = _formKey.currentState;

                  if (!form.validate()) {
                    return;
                  }

                  form.save();

                  try {
                    await model.getAuth(_code);
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/share/list', (_) => false);
                  } catch (ex) {
                    handle(context, ex);
                  }
                }),
              ),
            ],
          ),
        );
      },
    );
  }
}
