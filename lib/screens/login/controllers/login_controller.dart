import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String fieldEmail = '';

  @action
  void setEmail(String value) => fieldEmail = value;

  @observable
  String fieldPassword = '';

  @action
  void setPassword(String value) => fieldPassword = value;

  @computed
  bool get isFormValid => fieldEmail.length > 6 && fieldPassword.length > 6;

  @observable
  bool loading = false;

  @action
  void setLoading(bool value) => loading = value;
}
