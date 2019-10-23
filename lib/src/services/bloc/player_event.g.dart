// GENERATED CODE - DO NOT MODIFY BY HAND

part of player_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Pause extends Pause {
  @override
  final Tune tune;

  factory _$Pause([void Function(PauseBuilder) updates]) =>
      (new PauseBuilder()..update(updates)).build();

  _$Pause._({this.tune}) : super._() {
    if (tune == null) {
      throw new BuiltValueNullFieldError('Pause', 'tune');
    }
  }

  @override
  Pause rebuild(void Function(PauseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PauseBuilder toBuilder() => new PauseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pause && tune == other.tune;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tune.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Pause')..add('tune', tune)).toString();
  }
}

class PauseBuilder implements Builder<Pause, PauseBuilder> {
  _$Pause _$v;

  TuneBuilder _tune;
  TuneBuilder get tune => _$this._tune ??= new TuneBuilder();
  set tune(TuneBuilder tune) => _$this._tune = tune;

  PauseBuilder();

  PauseBuilder get _$this {
    if (_$v != null) {
      _tune = _$v.tune?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pause other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Pause;
  }

  @override
  void update(void Function(PauseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Pause build() {
    _$Pause _$result;
    try {
      _$result = _$v ?? new _$Pause._(tune: tune.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tune';
        tune.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Pause', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PlayEvent extends PlayEvent {
  @override
  final Tune tune;

  factory _$PlayEvent([void Function(PlayEventBuilder) updates]) =>
      (new PlayEventBuilder()..update(updates)).build();

  _$PlayEvent._({this.tune}) : super._() {
    if (tune == null) {
      throw new BuiltValueNullFieldError('PlayEvent', 'tune');
    }
  }

  @override
  PlayEvent rebuild(void Function(PlayEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlayEventBuilder toBuilder() => new PlayEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlayEvent && tune == other.tune;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tune.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PlayEvent')..add('tune', tune))
        .toString();
  }
}

class PlayEventBuilder implements Builder<PlayEvent, PlayEventBuilder> {
  _$PlayEvent _$v;

  TuneBuilder _tune;
  TuneBuilder get tune => _$this._tune ??= new TuneBuilder();
  set tune(TuneBuilder tune) => _$this._tune = tune;

  PlayEventBuilder();

  PlayEventBuilder get _$this {
    if (_$v != null) {
      _tune = _$v.tune?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlayEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PlayEvent;
  }

  @override
  void update(void Function(PlayEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PlayEvent build() {
    _$PlayEvent _$result;
    try {
      _$result = _$v ?? new _$PlayEvent._(tune: tune.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tune';
        tune.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PlayEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Resume extends Resume {
  @override
  final Tune tune;

  factory _$Resume([void Function(ResumeBuilder) updates]) =>
      (new ResumeBuilder()..update(updates)).build();

  _$Resume._({this.tune}) : super._() {
    if (tune == null) {
      throw new BuiltValueNullFieldError('Resume', 'tune');
    }
  }

  @override
  Resume rebuild(void Function(ResumeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResumeBuilder toBuilder() => new ResumeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Resume && tune == other.tune;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tune.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Resume')..add('tune', tune))
        .toString();
  }
}

class ResumeBuilder implements Builder<Resume, ResumeBuilder> {
  _$Resume _$v;

  TuneBuilder _tune;
  TuneBuilder get tune => _$this._tune ??= new TuneBuilder();
  set tune(TuneBuilder tune) => _$this._tune = tune;

  ResumeBuilder();

  ResumeBuilder get _$this {
    if (_$v != null) {
      _tune = _$v.tune?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Resume other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Resume;
  }

  @override
  void update(void Function(ResumeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Resume build() {
    _$Resume _$result;
    try {
      _$result = _$v ?? new _$Resume._(tune: tune.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tune';
        tune.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Resume', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Stop extends Stop {
  @override
  final Tune tune;

  factory _$Stop([void Function(StopBuilder) updates]) =>
      (new StopBuilder()..update(updates)).build();

  _$Stop._({this.tune}) : super._() {
    if (tune == null) {
      throw new BuiltValueNullFieldError('Stop', 'tune');
    }
  }

  @override
  Stop rebuild(void Function(StopBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopBuilder toBuilder() => new StopBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Stop && tune == other.tune;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tune.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Stop')..add('tune', tune)).toString();
  }
}

class StopBuilder implements Builder<Stop, StopBuilder> {
  _$Stop _$v;

  TuneBuilder _tune;
  TuneBuilder get tune => _$this._tune ??= new TuneBuilder();
  set tune(TuneBuilder tune) => _$this._tune = tune;

  StopBuilder();

  StopBuilder get _$this {
    if (_$v != null) {
      _tune = _$v.tune?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Stop other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Stop;
  }

  @override
  void update(void Function(StopBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Stop build() {
    _$Stop _$result;
    try {
      _$result = _$v ?? new _$Stop._(tune: tune.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tune';
        tune.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Stop', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
