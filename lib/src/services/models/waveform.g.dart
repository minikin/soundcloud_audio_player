// GENERATED CODE - DO NOT MODIFY BY HAND

part of waveform;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Waveform> _$waveformSerializer = new _$WaveformSerializer();

class _$WaveformSerializer implements StructuredSerializer<Waveform> {
  @override
  final Iterable<Type> types = const [Waveform, _$Waveform];
  @override
  final String wireName = 'Waveform';

  @override
  Iterable<Object> serialize(Serializers serializers, Waveform object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'version',
      serializers.serialize(object.version, specifiedType: const FullType(int)),
      'channels',
      serializers.serialize(object.channels,
          specifiedType: const FullType(int)),
      'sampleRate',
      serializers.serialize(object.sampleRate,
          specifiedType: const FullType(int)),
      'sampleSize',
      serializers.serialize(object.sampleSize,
          specifiedType: const FullType(int)),
      'bits',
      serializers.serialize(object.bits, specifiedType: const FullType(int)),
      'length',
      serializers.serialize(object.length, specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'scaledData',
      serializers.serialize(object.scaledData,
          specifiedType:
              const FullType(BuiltList, const [const FullType(double)])),
    ];

    return result;
  }

  @override
  Waveform deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WaveformBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'channels':
          result.channels = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sampleRate':
          result.sampleRate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sampleSize':
          result.sampleSize = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'bits':
          result.bits = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'length':
          result.length = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<dynamic>);
          break;
        case 'scaledData':
          result.scaledData.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Waveform extends Waveform {
  @override
  final int version;
  @override
  final int channels;
  @override
  final int sampleRate;
  @override
  final int sampleSize;
  @override
  final int bits;
  @override
  final int length;
  @override
  final BuiltList<int> data;
  @override
  final BuiltList<double> scaledData;

  factory _$Waveform([void Function(WaveformBuilder) updates]) =>
      (new WaveformBuilder()..update(updates)).build();

  _$Waveform._(
      {this.version,
      this.channels,
      this.sampleRate,
      this.sampleSize,
      this.bits,
      this.length,
      this.data,
      this.scaledData})
      : super._() {
    if (version == null) {
      throw new BuiltValueNullFieldError('Waveform', 'version');
    }
    if (channels == null) {
      throw new BuiltValueNullFieldError('Waveform', 'channels');
    }
    if (sampleRate == null) {
      throw new BuiltValueNullFieldError('Waveform', 'sampleRate');
    }
    if (sampleSize == null) {
      throw new BuiltValueNullFieldError('Waveform', 'sampleSize');
    }
    if (bits == null) {
      throw new BuiltValueNullFieldError('Waveform', 'bits');
    }
    if (length == null) {
      throw new BuiltValueNullFieldError('Waveform', 'length');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('Waveform', 'data');
    }
    if (scaledData == null) {
      throw new BuiltValueNullFieldError('Waveform', 'scaledData');
    }
  }

  @override
  Waveform rebuild(void Function(WaveformBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WaveformBuilder toBuilder() => new WaveformBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Waveform &&
        version == other.version &&
        channels == other.channels &&
        sampleRate == other.sampleRate &&
        sampleSize == other.sampleSize &&
        bits == other.bits &&
        length == other.length &&
        data == other.data &&
        scaledData == other.scaledData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, version.hashCode), channels.hashCode),
                            sampleRate.hashCode),
                        sampleSize.hashCode),
                    bits.hashCode),
                length.hashCode),
            data.hashCode),
        scaledData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Waveform')
          ..add('version', version)
          ..add('channels', channels)
          ..add('sampleRate', sampleRate)
          ..add('sampleSize', sampleSize)
          ..add('bits', bits)
          ..add('length', length)
          ..add('data', data)
          ..add('scaledData', scaledData))
        .toString();
  }
}

class WaveformBuilder implements Builder<Waveform, WaveformBuilder> {
  _$Waveform _$v;

  int _version;
  int get version => _$this._version;
  set version(int version) => _$this._version = version;

  int _channels;
  int get channels => _$this._channels;
  set channels(int channels) => _$this._channels = channels;

  int _sampleRate;
  int get sampleRate => _$this._sampleRate;
  set sampleRate(int sampleRate) => _$this._sampleRate = sampleRate;

  int _sampleSize;
  int get sampleSize => _$this._sampleSize;
  set sampleSize(int sampleSize) => _$this._sampleSize = sampleSize;

  int _bits;
  int get bits => _$this._bits;
  set bits(int bits) => _$this._bits = bits;

  int _length;
  int get length => _$this._length;
  set length(int length) => _$this._length = length;

  ListBuilder<int> _data;
  ListBuilder<int> get data => _$this._data ??= new ListBuilder<int>();
  set data(ListBuilder<int> data) => _$this._data = data;

  ListBuilder<double> _scaledData;
  ListBuilder<double> get scaledData =>
      _$this._scaledData ??= new ListBuilder<double>();
  set scaledData(ListBuilder<double> scaledData) =>
      _$this._scaledData = scaledData;

  WaveformBuilder();

  WaveformBuilder get _$this {
    if (_$v != null) {
      _version = _$v.version;
      _channels = _$v.channels;
      _sampleRate = _$v.sampleRate;
      _sampleSize = _$v.sampleSize;
      _bits = _$v.bits;
      _length = _$v.length;
      _data = _$v.data?.toBuilder();
      _scaledData = _$v.scaledData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Waveform other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Waveform;
  }

  @override
  void update(void Function(WaveformBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Waveform build() {
    _$Waveform _$result;
    try {
      _$result = _$v ??
          new _$Waveform._(
              version: version,
              channels: channels,
              sampleRate: sampleRate,
              sampleSize: sampleSize,
              bits: bits,
              length: length,
              data: data.build(),
              scaledData: scaledData.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
        _$failedField = 'scaledData';
        scaledData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Waveform', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
