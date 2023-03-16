part of generators;

class ArrayGenerator extends Generator {
  late Generator typeDef;
  final int length;

  ArrayGenerator({required Generator codec, required this.length})
      : typeDef = codec;
  ArrayGenerator._lazy({required this.length});

  factory ArrayGenerator.lazy(
      {required LazyLoader loader, required int codec, required int length}) {
    final generator = ArrayGenerator._lazy(length: length);
    loader.addLoader((Map<int, Generator> register) {
      generator.typeDef = register[codec]!;
    });
    return generator;
  }

  @override
  TypeReference primitive(BasePath from) {
    if (typeDef is PrimitiveGenerator) {
      switch ((typeDef as PrimitiveGenerator).primitiveType) {
        case metadata.Primitive.U8:
        case metadata.Primitive.U16:
        case metadata.Primitive.U32:
        case metadata.Primitive.U64:
        case metadata.Primitive.I8:
        case metadata.Primitive.I16:
        case metadata.Primitive.I32:
        case metadata.Primitive.I64:
          return constants.list(ref: constants.int);
        default:
          break;
      }
    }
    return constants.list(ref: typeDef.primitive(from));
  }

  @override
  TypeReference codec(BasePath from) {
    if (typeDef is PrimitiveGenerator) {
      switch ((typeDef as PrimitiveGenerator).primitiveType) {
        case metadata.Primitive.U8:
          return constants.u8ArrayCodec.type as TypeReference;
        case metadata.Primitive.U16:
          return constants.u16ArrayCodec.type as TypeReference;
        case metadata.Primitive.U32:
          return constants.u32ArrayCodec.type as TypeReference;
        case metadata.Primitive.U64:
          return constants.u64ArrayCodec.type as TypeReference;
        case metadata.Primitive.I8:
          return constants.i8ArrayCodec.type as TypeReference;
        case metadata.Primitive.I16:
          return constants.i16ArrayCodec.type as TypeReference;
        case metadata.Primitive.I32:
          return constants.i32ArrayCodec.type as TypeReference;
        case metadata.Primitive.I64:
          return constants.i64ArrayCodec.type as TypeReference;
        default:
          break;
      }
    }

    return constants.arrayCodec(typeDef.primitive(from));
  }

  @override
  Expression codecInstance(BasePath from) {
    final TypeReference codec = this.codec(from);

    if (typeDef is PrimitiveGenerator) {
      switch ((typeDef as PrimitiveGenerator).primitiveType) {
        case metadata.Primitive.U8:
        case metadata.Primitive.U16:
        case metadata.Primitive.U32:
        case metadata.Primitive.U64:
        case metadata.Primitive.I8:
        case metadata.Primitive.I16:
        case metadata.Primitive.I32:
        case metadata.Primitive.I64:
          return codec.constInstance([literalNum(length)]);
        default:
          break;
      }
    }

    return codec.constInstance([
      typeDef.codecInstance(from),
      literalNum(length),
    ]);
  }

  Expression listToExpression(List<int> values, bool constant) {
    final TypeReference listType = constants.list(ref: constants.int);
    if (!constant && values.every((value) => value == 0)) {
      return listType.newInstanceNamed(
          'filled',
          [literalNum(values.length), literalNum(0)],
          {'growable': literalFalse});
    } else if (constant) {
      return literalConstList(values, constants.int);
    }
    return literalList(values, constants.int);
  }

  @override
  Expression valueFrom(BasePath from, Input input, {bool constant = false}) {
    if (typeDef is PrimitiveGenerator) {
      switch ((typeDef as PrimitiveGenerator).primitiveType) {
        case metadata.Primitive.U8:
        case metadata.Primitive.Char:
          final list = U8ArrayCodec(length).decode(input);
          return listToExpression(list, constant);
        case metadata.Primitive.U16:
          final list = U16ArrayCodec(length).decode(input);
          return listToExpression(list, constant);
        case metadata.Primitive.U32:
          final list = U32ArrayCodec(length).decode(input);
          return listToExpression(list, constant);
        case metadata.Primitive.U64:
          final list = U64ArrayCodec(length).decode(input);
          return listToExpression(list, constant);
        case metadata.Primitive.I8:
          final list = I8ArrayCodec(length).decode(input);
          return listToExpression(list, constant);
        case metadata.Primitive.I16:
          final list = I16ArrayCodec(length).decode(input);
          return listToExpression(list, constant);
        case metadata.Primitive.I32:
          final list = I32ArrayCodec(length).decode(input);
          return listToExpression(list, constant);
        case metadata.Primitive.I64:
          final list = I64ArrayCodec(length).decode(input);
          return listToExpression(list, constant);
        default:
          break;
      }
    }

    final values = <Expression>[
      for (int i = 0; i < length; i++)
        typeDef.valueFrom(from, input, constant: constant)
    ];

    if (values.every((value) => value.isConst)) {
      return literalConstList(values);
    }
    return literalList(values);
  }

  @override
  TypeReference jsonType(BasePath from, [Set<Generator> visited = const {}]) {
    if (typeDef is PrimitiveGenerator) {
      switch ((typeDef as PrimitiveGenerator).primitiveType) {
        case metadata.Primitive.U8:
        case metadata.Primitive.Char:
        case metadata.Primitive.U16:
        case metadata.Primitive.U32:
        case metadata.Primitive.U64:
        case metadata.Primitive.I8:
        case metadata.Primitive.I16:
        case metadata.Primitive.I32:
        case metadata.Primitive.I64:
          return constants.list(ref: constants.int);
        case metadata.Primitive.U128:
        case metadata.Primitive.I128:
        case metadata.Primitive.U256:
        case metadata.Primitive.I256:
          return constants.list(ref: constants.bigInt);
        case metadata.Primitive.Str:
          return constants.list(ref: constants.string);
        case metadata.Primitive.Bool:
          return constants.list(ref: constants.bool);
        default:
          break;
      }
    }
    if (visited.contains(this)) {
      return constants.list(ref: constants.dynamic);
    }
    visited.add(this);
    final type = Generator.cacheOrCreate(from, visited,
        () => constants.list(ref: typeDef.jsonType(from, visited)));
    visited.remove(this);
    return type;
  }

  @override
  Expression instanceToJson(BasePath from, Expression obj) {
    if (typeDef is PrimitiveGenerator) {
      switch ((typeDef as PrimitiveGenerator).primitiveType) {
        case metadata.Primitive.Str:
        case metadata.Primitive.U8:
        case metadata.Primitive.Char:
        case metadata.Primitive.U16:
        case metadata.Primitive.U32:
        case metadata.Primitive.U64:
        case metadata.Primitive.I8:
        case metadata.Primitive.I16:
        case metadata.Primitive.I32:
        case metadata.Primitive.I64:
          return obj.property('toList').call([]);
        default:
          break;
      }
    }

    return obj
        .property('map')
        .call([
          Method.returnsVoid((b) => b
            ..requiredParameters.add(Parameter((b) => b..name = 'value'))
            ..lambda = true
            ..body = typeDef.instanceToJson(from, refer('value')).code).closure
        ])
        .property('toList')
        .call([]);
  }
}