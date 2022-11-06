// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  late final _$percentAtom =
      Atom(name: '_HomeControllerBase.percent', context: context);

  @override
  double? get percent {
    _$percentAtom.reportRead();
    return super.percent;
  }

  @override
  set percent(double? value) {
    _$percentAtom.reportWrite(value, super.percent, () {
      super.percent = value;
    });
  }

  late final _$percentValueAtom =
      Atom(name: '_HomeControllerBase.percentValue', context: context);

  @override
  double? get percentValue {
    _$percentValueAtom.reportRead();
    return super.percentValue;
  }

  @override
  set percentValue(double? value) {
    _$percentValueAtom.reportWrite(value, super.percentValue, () {
      super.percentValue = value;
    });
  }

  late final _$mantraAtom =
      Atom(name: '_HomeControllerBase.mantra', context: context);

  @override
  Mantra? get mantra {
    _$mantraAtom.reportRead();
    return super.mantra;
  }

  @override
  set mantra(Mantra? value) {
    _$mantraAtom.reportWrite(value, super.mantra, () {
      super.mantra = value;
    });
  }

  late final _$counterAtom =
      Atom(name: '_HomeControllerBase.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase', context: context);

  @override
  dynamic getPercent() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.getPercent');
    try {
      return super.getPercent();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic fulfillReplays() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.fulfillReplays');
    try {
      return super.fulfillReplays();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic cleanCounter() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.cleanCounter');
    try {
      return super.cleanCounter();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic riseCounter() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.riseCounter');
    try {
      return super.riseCounter();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic selectMantra(Mantra newMantra) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.selectMantra');
    try {
      return super.selectMantra(newMantra);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addMantra(Mantra newMantra) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.addMantra');
    try {
      return super.addMantra(newMantra);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updateMantra(Mantra newMantra) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.updateMantra');
    try {
      return super.updateMantra(newMantra);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic deleteMantra(Mantra newMantra) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.deleteMantra');
    try {
      return super.deleteMantra(newMantra);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
percent: ${percent},
percentValue: ${percentValue},
mantra: ${mantra},
counter: ${counter}
    ''';
  }
}
