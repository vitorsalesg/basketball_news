import 'package:mobx/mobx.dart';

part 'register_controller.g.dart';

class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  @observable
  String fieldEmail = '';

  @action
  void setEmail(String value) => fieldEmail = value;

  @observable
  String fieldname = '';

  @action
  void setName(String value) => fieldname = value;

  @observable
  String fieldLastName = '';

  @action
  void setLastName(String value) => fieldLastName = value;

  @observable
  String fieldPassword = '';

  @action
  void setPassword(String value) => fieldPassword = value;

  @computed
  bool get isFormValid =>
      fieldEmail.length > 6 &&
      fieldPassword.length > 6 &&
      fieldname.isNotEmpty &&
      fieldLastName.isNotEmpty;

  @observable
  bool loading = false;

  @action
  void setLoading(bool value) => loading = value;
}
