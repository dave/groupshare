import 'package:flutter/material.dart';
import 'package:groupshare/ui/appbar/appbar_view.dart';
import 'package:groupshare/ui/base_view.dart';
import 'package:groupshare/ui/handle.dart';
import 'package:groupshare/ui/share/add/share_add_model.dart';

class ShareAddView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView('Add share'),
      body: Center(
        child: ShareAddForm(),
      ),
    );
  }
}

class ShareAddForm extends StatefulWidget {
  @override
  _ShareAddFormState createState() => _ShareAddFormState();
}

class _ShareAddFormState extends State<ShareAddForm> {
  String _name;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BaseView<ShareAddModel>(
      builder: (context, model, child) {
        return Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                //leading: Icon(Icons.),
                title: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) return "Name cannot be empty";
                    return null;
                  },
                  onSaved: (value) => _name = value,
                  decoration: InputDecoration(
                    hintText: 'Name',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlineButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: Text("Cancel"),
                    onPressed: (() {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/share/list', (_) => false);
                    }),
                  ),
                  SizedBox(width: 10),
                  OutlineButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: Text("Add"),
                    onPressed: (() async {
                      final FormState form = _formKey.currentState;

                      if (!form.validate()) {
                        return;
                      }

                      form.save();

                      try {
                        await model.addShare(_name);
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/share/list', (_) => false);
                      } catch (ex) {
                        handle(context, ex);
                      }
                    }),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
