// GENERATED CODE - DO NOT MODIFY BY HAND

part of tune;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Tune extends Tune {
  @override
  final String artist;
  @override
  final String title;
  @override
  final String artwork;
  @override
  final String waveformDataPath;

  factory _$Tune([void Function(TuneBuilder) updates]) =>
      (new TuneBuilder()..update(updates)).build();

  _$Tune._({this.artist, this.title, this.artwork, this.waveformDataPath})
      : super._() {
    if (artist == null) {
      throw new BuiltValueNullFieldError('Tune', 'artist');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Tune', 'title');
    }
    if (artwork == null) {
      throw new BuiltValueNullFieldError('Tune', 'artwork');
    }
    if (waveformDataPath == null) {
      throw new BuiltValueNullFieldError('Tune', 'waveformDataPath');
    }
  }

  @override
  Tune rebuild(void Function(TuneBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TuneBuilder toBuilder() => new TuneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tune &&
        artist == other.artist &&
        title == other.title &&
        artwork == other.artwork &&
        waveformDataPath == other.waveformDataPath;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, artist.hashCode), title.hashCode), artwork.hashCode),
        waveformDataPath.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Tune')
          ..add('artist', artist)
          ..add('title', title)
          ..add('artwork', artwork)
          ..add('waveformDataPath', waveformDataPath))
        .toString();
  }
}

class TuneBuilder implements Builder<Tune, TuneBuilder> {
  _$Tune _$v;

  String _artist;
  String get artist => _$this._artist;
  set artist(String artist) => _$this._artist = artist;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _artwork;
  String get artwork => _$this._artwork;
  set artwork(String artwork) => _$this._artwork = artwork;

  String _waveformDataPath;
  String get waveformDataPath => _$this._waveformDataPath;
  set waveformDataPath(String waveformDataPath) =>
      _$this._waveformDataPath = waveformDataPath;

  TuneBuilder();

  TuneBuilder get _$this {
    if (_$v != null) {
      _artist = _$v.artist;
      _title = _$v.title;
      _artwork = _$v.artwork;
      _waveformDataPath = _$v.waveformDataPath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tune other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Tune;
  }

  @override
  void update(void Function(TuneBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Tune build() {
    final _$result = _$v ??
        new _$Tune._(
            artist: artist,
            title: title,
            artwork: artwork,
            waveformDataPath: waveformDataPath);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
