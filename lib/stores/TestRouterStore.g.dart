// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TestRouterStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TestRouterStore on _TestStore, Store {
  final _$countAtom = Atom(name: '_TestStore.count');

  @override
  num get count {
    _$countAtom.context.enforceReadPolicy(_$countAtom);
    _$countAtom.reportObserved();
    return super.count;
  }

  @override
  set count(num value) {
    _$countAtom.context.conditionallyRunInAction(() {
      super.count = value;
      _$countAtom.reportChanged();
    }, _$countAtom, name: '${_$countAtom.name}_set');
  }

  @override
  String toString() {
    final string = 'count: ${count.toString()}';
    return '{$string}';
  }
}
