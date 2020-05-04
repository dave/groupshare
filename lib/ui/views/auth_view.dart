import 'package:flutter/material.dart';
import 'package:groupshare/core/excpetions/exceptions.dart';
import 'package:groupshare/core/viewmodels/auth_model.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/ui/views/base_view.dart';

class AuthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<AuthModel>(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: AuthForm(),
          ),
        );
      },
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
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
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
          RaisedButton(
            child: Text("Login"),
            onPressed: (() async {
              final model = locator<AuthModel>();
              final FormState form = _formKey.currentState;
              if (!form.validate()) {
                return;
              }
              form.save();

              try {
                await model.getAuth(_code);
                Navigator.pushNamedAndRemoveUntil(
                    context, '/share/list', (_) => false);
              } on UserException catch (ex) {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(ex.message),
                ));
              } catch (ex) {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Error"),
                ));
              }
            }),
          ),
        ],
      ),
    );
  }
}
