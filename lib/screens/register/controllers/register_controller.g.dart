// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterController on _RegisterControllerBase, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_RegisterControllerBase.isFormValid'))
          .value;

  final _$fieldEmailAtom = Atom(name: '_RegisterControllerBase.fieldEmail');

  @override
  String get fieldEmail {
    _$fieldEmailAtom.reportRead();
    return super.fieldEmail;
  }

  @override
  set fieldEmail(String value) {
    _$fieldEmailAtom.reportWrite(value, super.fieldEmail, () {
      super.fieldEmail = value;
    });
  }

  final _$fieldnameAtom = Atom(name: '_RegisterControllerBase.fieldname');

  @override
  String get fieldname {
    _$fieldnameAtom.reportRead();
    return super.fieldname;
  }

  @override
  set fieldname(String value) {
    _$fieldnameAtom.reportWrite(value, super.fieldname, () {
      super.fieldname = value;
    });
  }

  final _$fieldLastNameAtom =
      Atom(name: '_RegisterControllerBase.fieldLastName');

  @override
  String get fieldLastName {
    _$fieldLastNameAtom.reportRead();
    return super.fieldLastName;
  }

  @override
  set fieldLastName(String value) {
    _$fieldLastNameAtom.reportWrite(value, super.fieldLastName, () {
      super.fieldLastName = value;
    });
  }

  final _$fieldPasswordAtom =
      Atom(name: '_RegisterControllerBase.fieldPassword');

  @override
  String get fieldPassword {
    _$fieldPasswordAtom.reportRead();
    return super.fieldPassword;
  }

  @override
  set fieldPassword(String value) {
    _$fieldPasswordAtom.reportWrite(value, super.fieldPassword, () {
      super.fieldPassword = value;
    });
  }

  final _$loadingAtom = Atom(name: '_RegisterControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$_RegisterControllerBaseActionController =
      ActionController(name: '_RegisterControllerBase');

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastName(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setLastName');
    try {
      return super.setLastName(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_RegisterControllerBaseActionController.startAction(
        name: '_RegisterControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
fieldEmail: ${fieldEmail},
fieldname: ${fieldname},
fieldLastName: ${fieldLastName},
fieldPassword: ${fieldPassword},
loading: ${loading},
isFormValid: ${isFormValid}
    ''';
  }
}
