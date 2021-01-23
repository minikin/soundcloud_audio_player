// GENERATED CODE - DO NOT MODIFY BY HAND

part of audio_file;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AudioFile> _$audioFileSerializer = new _$AudioFileSerializer();

class _$AudioFileSerializer implements StructuredSerializer<AudioFile> {
  @override
  final Iterable<Type> types = const [AudioFile, _$AudioFile];
  @override
  final String wireName = 'AudioFile';

  @override
  Iterable<Object> serialize(Serializers serializers, AudioFile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'audioUrl',
      serializers.serialize(object.audioUrl,
          specifiedType: const FullType(String)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(int)),
      'waveformResponse',
      serializers.serialize(object.waveformResponse,
          specifiedType: const FullType(WaveformResponse)),
    ];

    return result;
  }

  @override
  AudioFile deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AudioFileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'audioUrl':
          result.audioUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'waveformResponse':
          result.waveformResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WaveformResponse))
              as WaveformResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$AudioFile extends AudioFile {
  @override
  final String id;
  @override
  final String name;
  @override
  final String audioUrl;
  @override
  final int duration;
  @override
  final WaveformResponse waveformResponse;

  factory _$AudioFile([void Function(AudioFileBuilder)? updates]) =>
      (new AudioFileBuilder()..update(updates)).build();

  _$AudioFile._(
      {required this.id,
      required this.name,
      required this.audioUrl,
      required this.duration,
      required this.waveformResponse})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'AudioFile', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'AudioFile', 'name');
    BuiltValueNullFieldError.checkNotNull(audioUrl, 'AudioFile', 'audioUrl');
    BuiltValueNullFieldError.checkNotNull(duration, 'AudioFile', 'duration');
    BuiltValueNullFieldError.checkNotNull(
        waveformResponse, 'AudioFile', 'waveformResponse');
  }

  @override
  AudioFile rebuild(void Function(AudioFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AudioFileBuilder toBuilder() => new AudioFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AudioFile &&
        id == other.id &&
        name == other.name &&
        audioUrl == other.audioUrl &&
        duration == other.duration &&
        waveformResponse == other.waveformResponse;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), audioUrl.hashCode),
            duration.hashCode),
        waveformResponse.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AudioFile')
          ..add('id', id)
          ..add('name', name)
          ..add('audioUrl', audioUrl)
          ..add('duration', duration)
          ..add('waveformResponse', waveformResponse))
        .toString();
  }
}

class AudioFileBuilder implements Builder<AudioFile, AudioFileBuilder> {
  _$AudioFile? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _audioUrl;
  String? get audioUrl => _$this._audioUrl;
  set audioUrl(String? audioUrl) => _$this._audioUrl = audioUrl;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  WaveformResponseBuilder? _waveformResponse;
  WaveformResponseBuilder get waveformResponse =>
      _$this._waveformResponse ??= new WaveformResponseBuilder();
  set waveformResponse(WaveformResponseBuilder? waveformResponse) =>
      _$this._waveformResponse = waveformResponse;

  AudioFileBuilder();

  AudioFileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _audioUrl = $v.audioUrl;
      _duration = $v.duration;
      _waveformResponse = $v.waveformResponse.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AudioFile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AudioFile;
  }

  @override
  void update(void Function(AudioFileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AudioFile build() {
    _$AudioFile _$result;
    try {
      _$result = _$v ??
          new _$AudioFile._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'AudioFile', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'AudioFile', 'name'),
              audioUrl: BuiltValueNullFieldError.checkNotNull(
                  audioUrl, 'AudioFile', 'audioUrl'),
              duration: BuiltValueNullFieldError.checkNotNull(
                  duration, 'AudioFile', 'duration'),
              waveformResponse: waveformResponse.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'waveformResponse';
        waveformResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AudioFile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
