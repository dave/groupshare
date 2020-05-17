import 'package:groupshare/core/enums/viewstate.dart';
import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/core/services/prefs.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/messages/token.pb.dart';
import 'package:groupshare/ui/base_model.dart';

class HomeModel extends BaseModel {
  Status _status;
  Status get status => _status;

  validate() async {
    setState(ViewState.Busy);
    final prefs = locator<Prefs>();
    final api = locator<Api>();
    final auth = locator<Auth>();

    final status = auth.status();
    if (status == Status.Empty) {
      await prefs.clear();
      _status = Status.Empty;
      setState(ViewState.Idle);
      return;
    }

    if (status == Status.Auth) {
      _status = Status.Auth;
      setState(ViewState.Idle);
      return;
    }

    final req = Token_Validate_Request.create()..token = auth.token();

    await api.send<Token_Validate_Request, Token_Validate_Response>(
      req,
      Token_Validate_Response(),
    );
    _status = Status.Done;
    setState(ViewState.Idle);
  }

  logoff() async {
    final prefs = locator<Prefs>();
    await prefs.clear();
  }
}
