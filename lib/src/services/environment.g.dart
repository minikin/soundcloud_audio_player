// GENERATED CODE - DO NOT MODIFY BY HAND

part of environment;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Environment extends Environment {
  factory _$Environment([void Function(EnvironmentBuilder) updates]) =>
      (new EnvironmentBuilder()..update(updates)).build();

  _$Environment._() : super._();

  @override
  Environment rebuild(void Function(EnvironmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnvironmentBuilder toBuilder() => new EnvironmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Environment;
  }

  @override
  int get hashCode {
    return 906983632;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Environment').toString();
  }
}

class EnvironmentBuilder implements Builder<Environment, EnvironmentBuilder> {
  _$Environment _$v;

  EnvironmentBuilder();

  @override
  void replace(Environment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Environment;
  }

  @override
  void update(void Function(EnvironmentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Environment build() {
    final _$result = _$v ?? new _$Environment._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
