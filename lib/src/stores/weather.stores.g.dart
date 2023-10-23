// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$weatherStore on _weatherStore, Store {
  Computed<bool>? _$isValidCityComputed;

  @override
  bool get isValidCity =>
      (_$isValidCityComputed ??= Computed<bool>(() => super.isValidCity,
              name: '_weatherStore.isValidCity'))
          .value;
  Computed<bool>? _$isValidSearchingComputed;

  @override
  bool get isValidSearching => (_$isValidSearchingComputed ??= Computed<bool>(
          () => super.isValidSearching,
          name: '_weatherStore.isValidSearching'))
      .value;
  Computed<String?>? _$getErrormessageComputed;

  @override
  String? get getErrormessage => (_$getErrormessageComputed ??=
          Computed<String?>(() => super.getErrormessage,
              name: '_weatherStore.getErrormessage'))
      .value;
  Computed<Weather?>? _$getWeatherComputed;

  @override
  Weather? get getWeather =>
      (_$getWeatherComputed ??= Computed<Weather?>(() => super.getWeather,
              name: '_weatherStore.getWeather'))
          .value;

  late final _$cityAtom = Atom(name: '_weatherStore.city', context: context);

  @override
  String get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(String value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  late final _$searchingAtom =
      Atom(name: '_weatherStore.searching', context: context);

  @override
  bool get searching {
    _$searchingAtom.reportRead();
    return super.searching;
  }

  @override
  set searching(bool value) {
    _$searchingAtom.reportWrite(value, super.searching, () {
      super.searching = value;
    });
  }

  late final _$instanciConfirmAtom =
      Atom(name: '_weatherStore.instanciConfirm', context: context);

  @override
  bool get instanciConfirm {
    _$instanciConfirmAtom.reportRead();
    return super.instanciConfirm;
  }

  @override
  set instanciConfirm(bool value) {
    _$instanciConfirmAtom.reportWrite(value, super.instanciConfirm, () {
      super.instanciConfirm = value;
    });
  }

  late final _$weatherAtom =
      Atom(name: '_weatherStore.weather', context: context);

  @override
  Weather? get weather {
    _$weatherAtom.reportRead();
    return super.weather;
  }

  @override
  set weather(Weather? value) {
    _$weatherAtom.reportWrite(value, super.weather, () {
      super.weather = value;
    });
  }

  late final _$errormessageAtom =
      Atom(name: '_weatherStore.errormessage', context: context);

  @override
  String? get errormessage {
    _$errormessageAtom.reportRead();
    return super.errormessage;
  }

  @override
  set errormessage(String? value) {
    _$errormessageAtom.reportWrite(value, super.errormessage, () {
      super.errormessage = value;
    });
  }

  late final _$setWeatherAsyncAction =
      AsyncAction('_weatherStore.setWeather', context: context);

  @override
  Future<void> setWeather() {
    return _$setWeatherAsyncAction.run(() => super.setWeather());
  }

  late final _$_weatherStoreActionController =
      ActionController(name: '_weatherStore', context: context);

  @override
  void setCity(String value) {
    final _$actionInfo = _$_weatherStoreActionController.startAction(
        name: '_weatherStore.setCity');
    try {
      return super.setCity(value);
    } finally {
      _$_weatherStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSearching() {
    final _$actionInfo = _$_weatherStoreActionController.startAction(
        name: '_weatherStore.setSearching');
    try {
      return super.setSearching();
    } finally {
      _$_weatherStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setinstanciConfirm() {
    final _$actionInfo = _$_weatherStoreActionController.startAction(
        name: '_weatherStore.setinstanciConfirm');
    try {
      return super.setinstanciConfirm();
    } finally {
      _$_weatherStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setErrormessage(String value) {
    final _$actionInfo = _$_weatherStoreActionController.startAction(
        name: '_weatherStore.setErrormessage');
    try {
      return super.setErrormessage(value);
    } finally {
      _$_weatherStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
city: ${city},
searching: ${searching},
instanciConfirm: ${instanciConfirm},
weather: ${weather},
errormessage: ${errormessage},
isValidCity: ${isValidCity},
isValidSearching: ${isValidSearching},
getErrormessage: ${getErrormessage},
getWeather: ${getWeather}
    ''';
  }
}
