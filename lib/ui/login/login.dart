//import 'package:flutter/foundation.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:freezed_annotation/freezed_annotation.dart';
//import 'package:groupshare/locator.dart';
//import 'package:groupshare/pb/groupshare/messages/auth.pb.dart';
//import 'package:groupshare/services/api.dart';
//import 'package:groupshare/services/auth.dart';
//import 'package:groupshare/services/device.dart';
//
//part 'login.freezed.dart';
//
//@freezed
//abstract class LoginState with _$LoginState {
//  const factory LoginState.empty() = _LoginEmpty;
//}
//
//class LoginCubit extends Cubit<LoginState> {
//  LoginCubit() : super(LoginState.empty());
//
//  Future<void> send(String email) async {
//    final device = locator<Device>();
//    final api = locator<Api>();
//    final auth = locator<Auth>();
//
//    auth.login()
//  }
//}
