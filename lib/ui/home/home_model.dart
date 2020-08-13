import 'package:groupshare/core/enums/viewstate.dart';
import 'package:groupshare/core/services/api.dart';
import 'package:groupshare/core/services/auth.dart';
import 'package:groupshare/core/services/data.dart';
import 'package:groupshare/locator.dart';
import 'package:groupshare/pb/groupshare/messages/auth.pb.dart';
import 'package:groupshare/ui/base_model.dart';

class HomeModel extends BaseModel {
  Status _status;
  Status get status => _status;

  Future<void> validate() async {
    print("validate");
    setState(ViewState.Busy);
    final api = locator<Api>();
    final auth = locator<Auth>();
    final data = locator<Data>();

    final status = auth.status;
    if (status == Status.Empty) {
      await auth.logoff();
      _status = Status.Empty;
      setState(ViewState.Idle);
      return;
    }

    if (status == Status.Auth) {
      _status = Status.Auth;
      setState(ViewState.Idle);
      return;
    }

    if (api.connected()) {
      final req = Validate_Request();
      await api.send(req, null);
    }

    await data.initUser();
    _status = Status.Done;
    setState(ViewState.Idle);
  }
}
