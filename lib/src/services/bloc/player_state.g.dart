// GENERATED CODE - DO NOT MODIFY BY HAND

part of player_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlayerState extends PlayerState {
  @override
  final bool isPlaying;
  @override
  final bool isPaused;
  @override
  final bool isStopped;
  @override
  final bool isResumed;

  factory _$PlayerState([void Function(PlayerStateBuilder) updates]) =>
      (new PlayerStateBuilder()..update(updates)).build();

  _$PlayerState._(
      {this.isPlaying, this.isPaused, this.isStopped, this.isResumed})
      : super._() {
    if (isPlaying == null) {
      throw new BuiltValueNullFieldError('PlayerState', 'isPlaying');
    }
    if (isPaused == null) {
      throw new BuiltValueNullFieldError('PlayerState', 'isPaused');
    }
    if (isStopped == null) {
      throw new BuiltValueNullFieldError('PlayerState', 'isStopped');
    }
    if (isResumed == null) {
      throw new BuiltValueNullFieldError('PlayerState', 'isResumed');
    }
  }

  @override
  PlayerState rebuild(void Function(PlayerStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlayerStateBuilder toBuilder() => new PlayerStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlayerState &&
        isPlaying == other.isPlaying &&
        isPaused == other.isPaused &&
        isStopped == other.isStopped &&
        isResumed == other.isResumed;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isPlaying.hashCode), isPaused.hashCode),
            isStopped.hashCode),
        isResumed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PlayerState')
          ..add('isPlaying', isPlaying)
          ..add('isPaused', isPaused)
          ..add('isStopped', isStopped)
          ..add('isResumed', isResumed))
        .toString();
  }
}

class PlayerStateBuilder implements Builder<PlayerState, PlayerStateBuilder> {
  _$PlayerState _$v;

  bool _isPlaying;
  bool get isPlaying => _$this._isPlaying;
  set isPlaying(bool isPlaying) => _$this._isPlaying = isPlaying;

  bool _isPaused;
  bool get isPaused => _$this._isPaused;
  set isPaused(bool isPaused) => _$this._isPaused = isPaused;

  bool _isStopped;
  bool get isStopped => _$this._isStopped;
  set isStopped(bool isStopped) => _$this._isStopped = isStopped;

  bool _isResumed;
  bool get isResumed => _$this._isResumed;
  set isResumed(bool isResumed) => _$this._isResumed = isResumed;

  PlayerStateBuilder();

  PlayerStateBuilder get _$this {
    if (_$v != null) {
      _isPlaying = _$v.isPlaying;
      _isPaused = _$v.isPaused;
      _isStopped = _$v.isStopped;
      _isResumed = _$v.isResumed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlayerState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PlayerState;
  }

  @override
  void update(void Function(PlayerStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PlayerState build() {
    final _$result = _$v ??
        new _$PlayerState._(
            isPlaying: isPlaying,
            isPaused: isPaused,
            isStopped: isStopped,
            isResumed: isResumed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
