//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:groupshare/ui/appbar/appbar_view.dart';
//import 'package:groupshare/ui/handle.dart';
//import 'package:groupshare/ui/login/login.dart';
//
//class LoginView extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBarView('Log in'),
//      body: Center(
//        child: LoginForm(),
//      ),
//    );
//  }
//}
//
//class LoginForm extends StatefulWidget {
//  @override
//  _LoginFormState createState() => _LoginFormState();
//}
//
//class _LoginFormState extends State<LoginForm> {
//  String _email;
//  final _formKey = GlobalKey<FormState>();
//
//  @override
//  Widget build(BuildContext context) {
//    return BlocProvider(
//      create: (_) => LoginCubit(),
//      child: Form(
//        key: _formKey,
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            ListTile(
//              leading: Icon(Icons.alternate_email),
//              title: TextFormField(
//                keyboardType: TextInputType.emailAddress,
//                validator: (value) {
//                  if (value.isEmpty) return "Email cannot be empty";
//                  return null;
//                },
//                onSaved: (value) => _email = value,
//                decoration: InputDecoration(
//                  hintText: 'Email',
//                ),
//              ),
//            ),
//            OutlineButton(
//              shape: new RoundedRectangleBorder(
//                  borderRadius: new BorderRadius.circular(30.0)),
//              child: Text("Log in"),
//              onPressed: (() async {
//                final FormState form = _formKey.currentState;
//                if (!form.validate()) {
//                  return;
//                }
//                form.save();
//                try {
//                  await context.bloc<LoginCubit>().send(_email);
//                  Navigator.pushNamedAndRemoveUntil(
//                    context,
//                    '/auth',
//                    (_) => false,
//                  );
//                } catch (ex) {
//                  handle(context, ex);
//                }
//              }),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
