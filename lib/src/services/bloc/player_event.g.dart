// GENERATED CODE - DO NOT MODIFY BY HAND

part of player_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Pause extends Pause {
  factory _$Pause([void Function(PauseBuilder) updates]) =>
      (new PauseBuilder()..update(updates)).build();

  _$Pause._() : super._();

  @override
  Pause rebuild(void Function(PauseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PauseBuilder toBuilder() => new PauseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pause;
  }

  @override
  int get hashCode {
    return 277258060;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Pause').toString();
  }
}

class PauseBuilder implements Builder<Pause, PauseBuilder> {
  _$Pause _$v;

  PauseBuilder();

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
    final _$result = _$v ?? new _$Pause._();
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
  factory _$Resume([void Function(ResumeBuilder) updates]) =>
      (new ResumeBuilder()..update(updates)).build();

  _$Resume._() : super._();

  @override
  Resume rebuild(void Function(ResumeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResumeBuilder toBuilder() => new ResumeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Resume;
  }

  @override
  int get hashCode {
    return 195046551;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Resume').toString();
  }
}

class ResumeBuilder implements Builder<Resume, ResumeBuilder> {
  _$Resume _$v;

  ResumeBuilder();

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
    final _$result = _$v ?? new _$Resume._();
    replace(_$result);
    return _$result;
  }
}

class _$Stop extends Stop {
  factory _$Stop([void Function(StopBuilder) updates]) =>
      (new StopBuilder()..update(updates)).build();

  _$Stop._() : super._();

  @override
  Stop rebuild(void Function(StopBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopBuilder toBuilder() => new StopBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Stop;
  }

  @override
  int get hashCode {
    return 464972701;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Stop').toString();
  }
}

class StopBuilder implements Builder<Stop, StopBuilder> {
  _$Stop _$v;

  StopBuilder();

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
    final _$result = _$v ?? new _$Stop._();
    replace(_$result);
    return _$result;
  }
}

class _$TrackPosition extends TrackPosition {
  @override
  final int position;

  factory _$TrackPosition([void Function(TrackPositionBuilder) updates]) =>
      (new TrackPositionBuilder()..update(updates)).build();

  _$TrackPosition._({this.position}) : super._() {
    if (position == null) {
      throw new BuiltValueNullFieldError('TrackPosition', 'position');
    }
  }

  @override
  TrackPosition rebuild(void Function(TrackPositionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackPositionBuilder toBuilder() => new TrackPositionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackPosition && position == other.position;
  }

  @override
  int get hashCode {
    return $jf($jc(0, position.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrackPosition')
          ..add('position', position))
        .toString();
  }
}

class TrackPositionBuilder
    implements Builder<TrackPosition, TrackPositionBuilder> {
  _$TrackPosition _$v;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  TrackPositionBuilder();

  TrackPositionBuilder get _$this {
    if (_$v != null) {
      _position = _$v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackPosition other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TrackPosition;
  }

  @override
  void update(void Function(TrackPositionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrackPosition build() {
    final _$result = _$v ?? new _$TrackPosition._(position: position);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
