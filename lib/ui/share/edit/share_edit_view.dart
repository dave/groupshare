//import 'package:flutter/material.dart';
//import 'package:groupshare/ui/appbar/appbar_view.dart';
//import 'package:groupshare/ui/base_view.dart';
//import 'package:groupshare/ui/handle.dart';
//import 'package:groupshare/ui/share/edit/share_edit_model.dart';
//
//class ShareEditView extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBarView('Edit share'),
//      body: Center(
//        child: ShareEditForm(),
//      ),
//    );
//  }
//}
//
//class ShareEditForm extends StatefulWidget {
//  @override
//  _ShareEditFormState createState() => _ShareEditFormState();
//}
//
//class _ShareEditFormState extends State<ShareEditForm> {
//  String _name;
//  final _formKey = GlobalKey<FormState>();
//
//  @override
//  Widget build(BuildContext context) {
//    return BaseView<ShareEditModel>(
//      builder: (context, model, child) {
//        return Form(
//          key: _formKey,
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              ListTile(
//                //leading: Icon(Icons.),
//                title: TextFormField(
//                  validator: (value) {
//                    if (value.isEmpty) return "Name cannot be empty";
//                    return null;
//                  },
//                  onSaved: (value) => _name = value,
//                  decoration: InputDecoration(
//                    hintText: 'Name',
//                  ),
//                ),
//              ),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                  OutlineButton(
//                    shape: new RoundedRectangleBorder(
//                        borderRadius: new BorderRadius.circular(30.0)),
//                    child: Text("Cancel"),
//                    onPressed: (() {
//                      Navigator.pushNamedAndRemoveUntil(
//                          context, '/share/list', (_) => false);
//                    }),
//                  ),
//                  SizedBox(width: 10),
//                  OutlineButton(
//                    shape: new RoundedRectangleBorder(
//                        borderRadius: new BorderRadius.circular(30.0)),
//                    child: Text("Edit"),
//                    onPressed: (() async {
//                      final FormState form = _formKey.currentState;
//
//                      if (!form.validate()) {
//                        return;
//                      }
//
//                      form.save();
//
//                      try {
//                        await model.editShare();
//                        Navigator.pushNamedAndRemoveUntil(
//                            context, '/share/list', (_) => false);
//                      } catch (ex) {
//                        handle(context, ex);
//                      }
//                    }),
//                  ),
//                ],
//              ),
//            ],
//          ),
//        );
//      },
//    );
//  }
//}
