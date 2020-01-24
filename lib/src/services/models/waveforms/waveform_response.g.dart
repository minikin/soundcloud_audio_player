// GENERATED CODE - DO NOT MODIFY BY HAND

part of waveform_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WaveformResponse> _$waveformResponseSerializer =
    new _$WaveformResponseSerializer();

class _$WaveformResponseSerializer
    implements StructuredSerializer<WaveformResponse> {
  @override
  final Iterable<Type> types = const [WaveformResponse, _$WaveformResponse];
  @override
  final String wireName = 'WaveformResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, WaveformResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'bits',
      serializers.serialize(object.bits, specifiedType: const FullType(int)),
      'channels',
      serializers.serialize(object.channels,
          specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'length',
      serializers.serialize(object.length, specifiedType: const FullType(int)),
      'sample_rate',
      serializers.serialize(object.sampleRate,
          specifiedType: const FullType(int)),
      'samples_per_pixel',
      serializers.serialize(object.sampleSize,
          specifiedType: const FullType(int)),
      'version',
      serializers.serialize(object.version, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  WaveformResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WaveformResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'bits':
          result.bits = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'channels':
          result.channels = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
        case 'length':
          result.length = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sample_rate':
          result.sampleRate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'samples_per_pixel':
          result.sampleSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WaveformResponse extends WaveformResponse {
  @override
  final int bits;
  @override
  final int channels;
  @override
  final BuiltList<int> data;
  @override
  final int length;
  @override
  final int sampleRate;
  @override
  final int sampleSize;
  @override
  final int version;

  factory _$WaveformResponse(
          [void Function(WaveformResponseBuilder) updates]) =>
      (new WaveformResponseBuilder()..update(updates)).build();

  _$WaveformResponse._(
      {this.bits,
      this.channels,
      this.data,
      this.length,
      this.sampleRate,
      this.sampleSize,
      this.version})
      : super._() {
    if (bits == null) {
      throw new BuiltValueNullFieldError('WaveformResponse', 'bits');
    }
    if (channels == null) {
      throw new BuiltValueNullFieldError('WaveformResponse', 'channels');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('WaveformResponse', 'data');
    }
    if (length == null) {
      throw new BuiltValueNullFieldError('WaveformResponse', 'length');
    }
    if (sampleRate == null) {
      throw new BuiltValueNullFieldError('WaveformResponse', 'sampleRate');
    }
    if (sampleSize == null) {
      throw new BuiltValueNullFieldError('WaveformResponse', 'sampleSize');
    }
    if (version == null) {
      throw new BuiltValueNullFieldError('WaveformResponse', 'version');
    }
  }

  @override
  WaveformResponse rebuild(void Function(WaveformResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WaveformResponseBuilder toBuilder() =>
      new WaveformResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WaveformResponse &&
        bits == other.bits &&
        channels == other.channels &&
        data == other.data &&
        length == other.length &&
        sampleRate == other.sampleRate &&
        sampleSize == other.sampleSize &&
        version == other.version;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, bits.hashCode), channels.hashCode),
                        data.hashCode),
                    length.hashCode),
                sampleRate.hashCode),
            sampleSize.hashCode),
        version.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WaveformResponse')
          ..add('bits', bits)
          ..add('channels', channels)
          ..add('data', data)
          ..add('length', length)
          ..add('sampleRate', sampleRate)
          ..add('sampleSize', sampleSize)
          ..add('version', version))
        .toString();
  }
}

class WaveformResponseBuilder
    implements Builder<WaveformResponse, WaveformResponseBuilder> {
  _$WaveformResponse _$v;

  int _bits;
  int get bits => _$this._bits;
  set bits(int bits) => _$this._bits = bits;

  int _channels;
  int get channels => _$this._channels;
  set channels(int channels) => _$this._channels = channels;

  ListBuilder<int> _data;
  ListBuilder<int> get data => _$this._data ??= new ListBuilder<int>();
  set data(ListBuilder<int> data) => _$this._data = data;

  int _length;
  int get length => _$this._length;
  set length(int length) => _$this._length = length;

  int _sampleRate;
  int get sampleRate => _$this._sampleRate;
  set sampleRate(int sampleRate) => _$this._sampleRate = sampleRate;

  int _sampleSize;
  int get sampleSize => _$this._sampleSize;
  set sampleSize(int sampleSize) => _$this._sampleSize = sampleSize;

  int _version;
  int get version => _$this._version;
  set version(int version) => _$this._version = version;

  WaveformResponseBuilder();

  WaveformResponseBuilder get _$this {
    if (_$v != null) {
      _bits = _$v.bits;
      _channels = _$v.channels;
      _data = _$v.data?.toBuilder();
      _length = _$v.length;
      _sampleRate = _$v.sampleRate;
      _sampleSize = _$v.sampleSize;
      _version = _$v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WaveformResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WaveformResponse;
  }

  @override
  void update(void Function(WaveformResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WaveformResponse build() {
    _$WaveformResponse _$result;
    try {
      _$result = _$v ??
          new _$WaveformResponse._(
              bits: bits,
              channels: channels,
              data: data.build(),
              length: length,
              sampleRate: sampleRate,
              sampleSize: sampleSize,
              version: version);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'WaveformResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
