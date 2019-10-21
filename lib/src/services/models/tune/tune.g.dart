// GENERATED CODE - DO NOT MODIFY BY HAND

part of tune;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Tune> _$tuneSerializer = new _$TuneSerializer();

class _$TuneSerializer implements StructuredSerializer<Tune> {
  @override
  final Iterable<Type> types = const [Tune, _$Tune];
  @override
  final String wireName = 'Tune';

  @override
  Iterable<Object> serialize(Serializers serializers, Tune object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'artist',
      serializers.serialize(object.artist,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'artwork',
      serializers.serialize(object.artwork,
          specifiedType: const FullType(String)),
      'audioFile',
      serializers.serialize(object.audioFile,
          specifiedType: const FullType(AudioFile)),
    ];

    return result;
  }

  @override
  Tune deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TuneBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'artist':
          result.artist = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'artwork':
          result.artwork = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'audioFile':
          result.audioFile.replace(serializers.deserialize(value,
              specifiedType: const FullType(AudioFile)) as AudioFile);
          break;
      }
    }

    return result.build();
  }
}

class _$Tune extends Tune {
  @override
  final String artist;
  @override
  final String title;
  @override
  final String artwork;
  @override
  final AudioFile audioFile;

  factory _$Tune([void Function(TuneBuilder) updates]) =>
      (new TuneBuilder()..update(updates)).build();

  _$Tune._({this.artist, this.title, this.artwork, this.audioFile})
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
    if (audioFile == null) {
      throw new BuiltValueNullFieldError('Tune', 'audioFile');
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
        audioFile == other.audioFile;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, artist.hashCode), title.hashCode), artwork.hashCode),
        audioFile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Tune')
          ..add('artist', artist)
          ..add('title', title)
          ..add('artwork', artwork)
          ..add('audioFile', audioFile))
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

  AudioFileBuilder _audioFile;
  AudioFileBuilder get audioFile =>
      _$this._audioFile ??= new AudioFileBuilder();
  set audioFile(AudioFileBuilder audioFile) => _$this._audioFile = audioFile;

  TuneBuilder();

  TuneBuilder get _$this {
    if (_$v != null) {
      _artist = _$v.artist;
      _title = _$v.title;
      _artwork = _$v.artwork;
      _audioFile = _$v.audioFile?.toBuilder();
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
    _$Tune _$result;
    try {
      _$result = _$v ??
          new _$Tune._(
              artist: artist,
              title: title,
              artwork: artwork,
              audioFile: audioFile.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'audioFile';
        audioFile.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Tune', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
