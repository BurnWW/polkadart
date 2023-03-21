part of primitives;

/// The identity of a particular API interface that the runtime might provide.
///
/// The id is generated by hashing the name of the runtime api with BLAKE2 using a hash size
/// of 8 bytes.
///
/// The name of the runtime api is the name of the trait when using `decl_runtime_apis!` macro. So,
/// in the following runtime api declaration:
///
/// ```nocompile
/// decl_runtime_apis! {
///     trait TestApi {
///         fn do_test();
///     }
/// }
/// ```
///
/// The name of the trait would be `TestApi` and would be taken as input to the BLAKE2 hash
/// function.
///
/// As Rust supports renaming of traits, the name of a runtime api given to `impl_runtime_apis!`
/// doesn't need to be the same as in `decl_runtime_apis!`, but only the name in
/// `decl_runtime_apis!` is the important one!
typedef ApiId = BigInt;

/// A pairs of `ApiId` and a `u32` for version.
class ApiVersion {
  final ApiId id;
  final int version;

  const ApiVersion({required this.id, required this.version});

  static const $ApiVersionCodec codec = $ApiVersionCodec();

  factory ApiVersion.decode(Input input) {
    return codec.decode(input);
  }

  factory ApiVersion.fromJson(List<dynamic> json) {
    return ApiVersion(
      id: U64Codec.codec.decode(Input.fromHex(json[0] as String)),
      version: json[1] as int,
    );
  }

  Uint8List encode() {
    return codec.encode(this);
  }

  List<dynamic> toJson() => [
        '0x${id.toRadixString(16)}',
        version,
      ];
}

class $ApiVersionCodec with Codec<ApiVersion> {
  const $ApiVersionCodec();

  @override
  ApiVersion decode(Input input) {
    return ApiVersion(
      id: U64Codec.codec.decode(input),
      version: U32Codec.codec.decode(input),
    );
  }

  @override
  void encodeTo(ApiVersion value, Output output) {
    U64Codec.codec.encodeTo(value.id, output);
    U64Codec.codec.encodeTo(value.id, output);
  }

  @override
  int sizeHint(ApiVersion value) {
    return U64Codec.codec.sizeHint(value.id) +
        U32Codec.codec.sizeHint(value.version);
  }
}
