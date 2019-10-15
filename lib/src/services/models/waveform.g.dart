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
      'bits',
      serializers.serialize(object.bits, specifiedType: const FullType(int)),
      'channels',
      serializers.serialize(object.channels,
          specifiedType: const FullType(int)),
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
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.scaledData != null) {
      result
        ..add('scaledData')
        ..add(serializers.serialize(object.scaledData,
            specifiedType:
                const FullType(List, const [const FullType(double)])));
    }
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
              as BuiltList<dynamic>);
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
        case 'scaledData':
          result.scaledData = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(double)]))
              as List<double>;
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

class _$Waveform extends Waveform {
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
  final List<double> scaledData;
  @override
  final int version;

  factory _$Waveform([void Function(WaveformBuilder) updates]) =>
      (new WaveformBuilder()..update(updates)).build();

  _$Waveform._(
      {this.bits,
      this.channels,
      this.data,
      this.length,
      this.sampleRate,
      this.sampleSize,
      this.scaledData,
      this.version})
      : super._() {
    if (bits == null) {
      throw new BuiltValueNullFieldError('Waveform', 'bits');
    }
    if (channels == null) {
      throw new BuiltValueNullFieldError('Waveform', 'channels');
    }
    if (length == null) {
      throw new BuiltValueNullFieldError('Waveform', 'length');
    }
    if (sampleRate == null) {
      throw new BuiltValueNullFieldError('Waveform', 'sampleRate');
    }
    if (sampleSize == null) {
      throw new BuiltValueNullFieldError('Waveform', 'sampleSize');
    }
    if (version == null) {
      throw new BuiltValueNullFieldError('Waveform', 'version');
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
        bits == other.bits &&
        channels == other.channels &&
        data == other.data &&
        length == other.length &&
        sampleRate == other.sampleRate &&
        sampleSize == other.sampleSize &&
        scaledData == other.scaledData &&
        version == other.version;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, bits.hashCode), channels.hashCode),
                            data.hashCode),
                        length.hashCode),
                    sampleRate.hashCode),
                sampleSize.hashCode),
            scaledData.hashCode),
        version.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Waveform')
          ..add('bits', bits)
          ..add('channels', channels)
          ..add('data', data)
          ..add('length', length)
          ..add('sampleRate', sampleRate)
          ..add('sampleSize', sampleSize)
          ..add('scaledData', scaledData)
          ..add('version', version))
        .toString();
  }
}

class WaveformBuilder implements Builder<Waveform, WaveformBuilder> {
  _$Waveform _$v;

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

  List<double> _scaledData;
  List<double> get scaledData => _$this._scaledData;
  set scaledData(List<double> scaledData) => _$this._scaledData = scaledData;

  int _version;
  int get version => _$this._version;
  set version(int version) => _$this._version = version;

  WaveformBuilder();

  WaveformBuilder get _$this {
    if (_$v != null) {
      _bits = _$v.bits;
      _channels = _$v.channels;
      _data = _$v.data?.toBuilder();
      _length = _$v.length;
      _sampleRate = _$v.sampleRate;
      _sampleSize = _$v.sampleSize;
      _scaledData = _$v.scaledData;
      _version = _$v.version;
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
              bits: bits,
              channels: channels,
              data: _data?.build(),
              length: length,
              sampleRate: sampleRate,
              sampleSize: sampleSize,
              scaledData: scaledData,
              version: version);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
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
