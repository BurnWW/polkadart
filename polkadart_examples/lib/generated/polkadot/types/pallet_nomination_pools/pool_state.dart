// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

enum PoolState {
  open('Open', 0),
  blocked('Blocked', 1),
  destroying('Destroying', 2);

  const PoolState(
    this.variantName,
    this.codecIndex,
  );

  factory PoolState.decode(_i1.Input input) {
    return codec.decode(input);
  }

  final String variantName;

  final int codecIndex;

  static const $PoolStateCodec codec = $PoolStateCodec();

  String toJson() => variantName;
  _i2.Uint8List encode() {
    return codec.encode(this);
  }
}

class $PoolStateCodec with _i1.Codec<PoolState> {
  const $PoolStateCodec();

  @override
  PoolState decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return PoolState.open;
      case 1:
        return PoolState.blocked;
      case 2:
        return PoolState.destroying;
      default:
        throw Exception('PoolState: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    PoolState value,
    _i1.Output output,
  ) {
    _i1.U8Codec.codec.encodeTo(
      value.codecIndex,
      output,
    );
  }
}
