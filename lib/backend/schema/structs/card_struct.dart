// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardStruct extends BaseStruct {
  CardStruct({
    int? order,
    String? questionText,
    String? image,
    String? variantAText,
    String? variantAEmoji,
    double? variantAIncreaseFinLevel,
    int? variantAIncreaseCoins,
    String? variantAResult,
    String? variantAResultImage,
    String? variantAResultBtnText,
    String? variantAResultBtnLink,
    String? variantBText,
    String? variantBEmoji,
    double? variantBIncreaseFinLevel,
    int? variantBIncreaseCoins,
    String? variantBResult,
    String? variantBResultImage,
    String? variantBResultBtnText,
    String? variantBResultBtnLink,
  })  : _order = order,
        _questionText = questionText,
        _image = image,
        _variantAText = variantAText,
        _variantAEmoji = variantAEmoji,
        _variantAIncreaseFinLevel = variantAIncreaseFinLevel,
        _variantAIncreaseCoins = variantAIncreaseCoins,
        _variantAResult = variantAResult,
        _variantAResultImage = variantAResultImage,
        _variantAResultBtnText = variantAResultBtnText,
        _variantAResultBtnLink = variantAResultBtnLink,
        _variantBText = variantBText,
        _variantBEmoji = variantBEmoji,
        _variantBIncreaseFinLevel = variantBIncreaseFinLevel,
        _variantBIncreaseCoins = variantBIncreaseCoins,
        _variantBResult = variantBResult,
        _variantBResultImage = variantBResultImage,
        _variantBResultBtnText = variantBResultBtnText,
        _variantBResultBtnLink = variantBResultBtnLink;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  set order(int? val) => _order = val;

  void incrementOrder(int amount) => order = order + amount;

  bool hasOrder() => _order != null;

  // "question_text" field.
  String? _questionText;
  String get questionText => _questionText ?? '';
  set questionText(String? val) => _questionText = val;

  bool hasQuestionText() => _questionText != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "variant_A_text" field.
  String? _variantAText;
  String get variantAText => _variantAText ?? '';
  set variantAText(String? val) => _variantAText = val;

  bool hasVariantAText() => _variantAText != null;

  // "variant_A_emoji" field.
  String? _variantAEmoji;
  String get variantAEmoji => _variantAEmoji ?? '';
  set variantAEmoji(String? val) => _variantAEmoji = val;

  bool hasVariantAEmoji() => _variantAEmoji != null;

  // "variant_A_increase_finLevel" field.
  double? _variantAIncreaseFinLevel;
  double get variantAIncreaseFinLevel => _variantAIncreaseFinLevel ?? 0.0;
  set variantAIncreaseFinLevel(double? val) => _variantAIncreaseFinLevel = val;

  void incrementVariantAIncreaseFinLevel(double amount) =>
      variantAIncreaseFinLevel = variantAIncreaseFinLevel + amount;

  bool hasVariantAIncreaseFinLevel() => _variantAIncreaseFinLevel != null;

  // "variant_A_increase_coins" field.
  int? _variantAIncreaseCoins;
  int get variantAIncreaseCoins => _variantAIncreaseCoins ?? 0;
  set variantAIncreaseCoins(int? val) => _variantAIncreaseCoins = val;

  void incrementVariantAIncreaseCoins(int amount) =>
      variantAIncreaseCoins = variantAIncreaseCoins + amount;

  bool hasVariantAIncreaseCoins() => _variantAIncreaseCoins != null;

  // "variant_A_result" field.
  String? _variantAResult;
  String get variantAResult => _variantAResult ?? '';
  set variantAResult(String? val) => _variantAResult = val;

  bool hasVariantAResult() => _variantAResult != null;

  // "variant_A_result_image" field.
  String? _variantAResultImage;
  String get variantAResultImage => _variantAResultImage ?? '';
  set variantAResultImage(String? val) => _variantAResultImage = val;

  bool hasVariantAResultImage() => _variantAResultImage != null;

  // "variant_A_result_btnText" field.
  String? _variantAResultBtnText;
  String get variantAResultBtnText => _variantAResultBtnText ?? '';
  set variantAResultBtnText(String? val) => _variantAResultBtnText = val;

  bool hasVariantAResultBtnText() => _variantAResultBtnText != null;

  // "variant_A_result_btnLink" field.
  String? _variantAResultBtnLink;
  String get variantAResultBtnLink => _variantAResultBtnLink ?? '';
  set variantAResultBtnLink(String? val) => _variantAResultBtnLink = val;

  bool hasVariantAResultBtnLink() => _variantAResultBtnLink != null;

  // "variant_B_text" field.
  String? _variantBText;
  String get variantBText => _variantBText ?? '';
  set variantBText(String? val) => _variantBText = val;

  bool hasVariantBText() => _variantBText != null;

  // "variant_B_emoji" field.
  String? _variantBEmoji;
  String get variantBEmoji => _variantBEmoji ?? '';
  set variantBEmoji(String? val) => _variantBEmoji = val;

  bool hasVariantBEmoji() => _variantBEmoji != null;

  // "variant_B_increase_finLevel" field.
  double? _variantBIncreaseFinLevel;
  double get variantBIncreaseFinLevel => _variantBIncreaseFinLevel ?? 0.0;
  set variantBIncreaseFinLevel(double? val) => _variantBIncreaseFinLevel = val;

  void incrementVariantBIncreaseFinLevel(double amount) =>
      variantBIncreaseFinLevel = variantBIncreaseFinLevel + amount;

  bool hasVariantBIncreaseFinLevel() => _variantBIncreaseFinLevel != null;

  // "variant_B_increase_coins" field.
  int? _variantBIncreaseCoins;
  int get variantBIncreaseCoins => _variantBIncreaseCoins ?? 0;
  set variantBIncreaseCoins(int? val) => _variantBIncreaseCoins = val;

  void incrementVariantBIncreaseCoins(int amount) =>
      variantBIncreaseCoins = variantBIncreaseCoins + amount;

  bool hasVariantBIncreaseCoins() => _variantBIncreaseCoins != null;

  // "variant_B_result" field.
  String? _variantBResult;
  String get variantBResult => _variantBResult ?? '';
  set variantBResult(String? val) => _variantBResult = val;

  bool hasVariantBResult() => _variantBResult != null;

  // "variant_B_result_image" field.
  String? _variantBResultImage;
  String get variantBResultImage => _variantBResultImage ?? '';
  set variantBResultImage(String? val) => _variantBResultImage = val;

  bool hasVariantBResultImage() => _variantBResultImage != null;

  // "variant_B_result_btnText" field.
  String? _variantBResultBtnText;
  String get variantBResultBtnText => _variantBResultBtnText ?? '';
  set variantBResultBtnText(String? val) => _variantBResultBtnText = val;

  bool hasVariantBResultBtnText() => _variantBResultBtnText != null;

  // "variant_B_result_btnLink" field.
  String? _variantBResultBtnLink;
  String get variantBResultBtnLink => _variantBResultBtnLink ?? '';
  set variantBResultBtnLink(String? val) => _variantBResultBtnLink = val;

  bool hasVariantBResultBtnLink() => _variantBResultBtnLink != null;

  static CardStruct fromMap(Map<String, dynamic> data) => CardStruct(
        order: castToType<int>(data['order']),
        questionText: data['question_text'] as String?,
        image: data['image'] as String?,
        variantAText: data['variant_A_text'] as String?,
        variantAEmoji: data['variant_A_emoji'] as String?,
        variantAIncreaseFinLevel:
            castToType<double>(data['variant_A_increase_finLevel']),
        variantAIncreaseCoins:
            castToType<int>(data['variant_A_increase_coins']),
        variantAResult: data['variant_A_result'] as String?,
        variantAResultImage: data['variant_A_result_image'] as String?,
        variantAResultBtnText: data['variant_A_result_btnText'] as String?,
        variantAResultBtnLink: data['variant_A_result_btnLink'] as String?,
        variantBText: data['variant_B_text'] as String?,
        variantBEmoji: data['variant_B_emoji'] as String?,
        variantBIncreaseFinLevel:
            castToType<double>(data['variant_B_increase_finLevel']),
        variantBIncreaseCoins:
            castToType<int>(data['variant_B_increase_coins']),
        variantBResult: data['variant_B_result'] as String?,
        variantBResultImage: data['variant_B_result_image'] as String?,
        variantBResultBtnText: data['variant_B_result_btnText'] as String?,
        variantBResultBtnLink: data['variant_B_result_btnLink'] as String?,
      );

  static CardStruct? maybeFromMap(dynamic data) =>
      data is Map ? CardStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'order': _order,
        'question_text': _questionText,
        'image': _image,
        'variant_A_text': _variantAText,
        'variant_A_emoji': _variantAEmoji,
        'variant_A_increase_finLevel': _variantAIncreaseFinLevel,
        'variant_A_increase_coins': _variantAIncreaseCoins,
        'variant_A_result': _variantAResult,
        'variant_A_result_image': _variantAResultImage,
        'variant_A_result_btnText': _variantAResultBtnText,
        'variant_A_result_btnLink': _variantAResultBtnLink,
        'variant_B_text': _variantBText,
        'variant_B_emoji': _variantBEmoji,
        'variant_B_increase_finLevel': _variantBIncreaseFinLevel,
        'variant_B_increase_coins': _variantBIncreaseCoins,
        'variant_B_result': _variantBResult,
        'variant_B_result_image': _variantBResultImage,
        'variant_B_result_btnText': _variantBResultBtnText,
        'variant_B_result_btnLink': _variantBResultBtnLink,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'order': serializeParam(
          _order,
          ParamType.int,
        ),
        'question_text': serializeParam(
          _questionText,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'variant_A_text': serializeParam(
          _variantAText,
          ParamType.String,
        ),
        'variant_A_emoji': serializeParam(
          _variantAEmoji,
          ParamType.String,
        ),
        'variant_A_increase_finLevel': serializeParam(
          _variantAIncreaseFinLevel,
          ParamType.double,
        ),
        'variant_A_increase_coins': serializeParam(
          _variantAIncreaseCoins,
          ParamType.int,
        ),
        'variant_A_result': serializeParam(
          _variantAResult,
          ParamType.String,
        ),
        'variant_A_result_image': serializeParam(
          _variantAResultImage,
          ParamType.String,
        ),
        'variant_A_result_btnText': serializeParam(
          _variantAResultBtnText,
          ParamType.String,
        ),
        'variant_A_result_btnLink': serializeParam(
          _variantAResultBtnLink,
          ParamType.String,
        ),
        'variant_B_text': serializeParam(
          _variantBText,
          ParamType.String,
        ),
        'variant_B_emoji': serializeParam(
          _variantBEmoji,
          ParamType.String,
        ),
        'variant_B_increase_finLevel': serializeParam(
          _variantBIncreaseFinLevel,
          ParamType.double,
        ),
        'variant_B_increase_coins': serializeParam(
          _variantBIncreaseCoins,
          ParamType.int,
        ),
        'variant_B_result': serializeParam(
          _variantBResult,
          ParamType.String,
        ),
        'variant_B_result_image': serializeParam(
          _variantBResultImage,
          ParamType.String,
        ),
        'variant_B_result_btnText': serializeParam(
          _variantBResultBtnText,
          ParamType.String,
        ),
        'variant_B_result_btnLink': serializeParam(
          _variantBResultBtnLink,
          ParamType.String,
        ),
      }.withoutNulls;

  static CardStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardStruct(
        order: deserializeParam(
          data['order'],
          ParamType.int,
          false,
        ),
        questionText: deserializeParam(
          data['question_text'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        variantAText: deserializeParam(
          data['variant_A_text'],
          ParamType.String,
          false,
        ),
        variantAEmoji: deserializeParam(
          data['variant_A_emoji'],
          ParamType.String,
          false,
        ),
        variantAIncreaseFinLevel: deserializeParam(
          data['variant_A_increase_finLevel'],
          ParamType.double,
          false,
        ),
        variantAIncreaseCoins: deserializeParam(
          data['variant_A_increase_coins'],
          ParamType.int,
          false,
        ),
        variantAResult: deserializeParam(
          data['variant_A_result'],
          ParamType.String,
          false,
        ),
        variantAResultImage: deserializeParam(
          data['variant_A_result_image'],
          ParamType.String,
          false,
        ),
        variantAResultBtnText: deserializeParam(
          data['variant_A_result_btnText'],
          ParamType.String,
          false,
        ),
        variantAResultBtnLink: deserializeParam(
          data['variant_A_result_btnLink'],
          ParamType.String,
          false,
        ),
        variantBText: deserializeParam(
          data['variant_B_text'],
          ParamType.String,
          false,
        ),
        variantBEmoji: deserializeParam(
          data['variant_B_emoji'],
          ParamType.String,
          false,
        ),
        variantBIncreaseFinLevel: deserializeParam(
          data['variant_B_increase_finLevel'],
          ParamType.double,
          false,
        ),
        variantBIncreaseCoins: deserializeParam(
          data['variant_B_increase_coins'],
          ParamType.int,
          false,
        ),
        variantBResult: deserializeParam(
          data['variant_B_result'],
          ParamType.String,
          false,
        ),
        variantBResultImage: deserializeParam(
          data['variant_B_result_image'],
          ParamType.String,
          false,
        ),
        variantBResultBtnText: deserializeParam(
          data['variant_B_result_btnText'],
          ParamType.String,
          false,
        ),
        variantBResultBtnLink: deserializeParam(
          data['variant_B_result_btnLink'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CardStruct &&
        order == other.order &&
        questionText == other.questionText &&
        image == other.image &&
        variantAText == other.variantAText &&
        variantAEmoji == other.variantAEmoji &&
        variantAIncreaseFinLevel == other.variantAIncreaseFinLevel &&
        variantAIncreaseCoins == other.variantAIncreaseCoins &&
        variantAResult == other.variantAResult &&
        variantAResultImage == other.variantAResultImage &&
        variantAResultBtnText == other.variantAResultBtnText &&
        variantAResultBtnLink == other.variantAResultBtnLink &&
        variantBText == other.variantBText &&
        variantBEmoji == other.variantBEmoji &&
        variantBIncreaseFinLevel == other.variantBIncreaseFinLevel &&
        variantBIncreaseCoins == other.variantBIncreaseCoins &&
        variantBResult == other.variantBResult &&
        variantBResultImage == other.variantBResultImage &&
        variantBResultBtnText == other.variantBResultBtnText &&
        variantBResultBtnLink == other.variantBResultBtnLink;
  }

  @override
  int get hashCode => const ListEquality().hash([
        order,
        questionText,
        image,
        variantAText,
        variantAEmoji,
        variantAIncreaseFinLevel,
        variantAIncreaseCoins,
        variantAResult,
        variantAResultImage,
        variantAResultBtnText,
        variantAResultBtnLink,
        variantBText,
        variantBEmoji,
        variantBIncreaseFinLevel,
        variantBIncreaseCoins,
        variantBResult,
        variantBResultImage,
        variantBResultBtnText,
        variantBResultBtnLink
      ]);
}

CardStruct createCardStruct({
  int? order,
  String? questionText,
  String? image,
  String? variantAText,
  String? variantAEmoji,
  double? variantAIncreaseFinLevel,
  int? variantAIncreaseCoins,
  String? variantAResult,
  String? variantAResultImage,
  String? variantAResultBtnText,
  String? variantAResultBtnLink,
  String? variantBText,
  String? variantBEmoji,
  double? variantBIncreaseFinLevel,
  int? variantBIncreaseCoins,
  String? variantBResult,
  String? variantBResultImage,
  String? variantBResultBtnText,
  String? variantBResultBtnLink,
}) =>
    CardStruct(
      order: order,
      questionText: questionText,
      image: image,
      variantAText: variantAText,
      variantAEmoji: variantAEmoji,
      variantAIncreaseFinLevel: variantAIncreaseFinLevel,
      variantAIncreaseCoins: variantAIncreaseCoins,
      variantAResult: variantAResult,
      variantAResultImage: variantAResultImage,
      variantAResultBtnText: variantAResultBtnText,
      variantAResultBtnLink: variantAResultBtnLink,
      variantBText: variantBText,
      variantBEmoji: variantBEmoji,
      variantBIncreaseFinLevel: variantBIncreaseFinLevel,
      variantBIncreaseCoins: variantBIncreaseCoins,
      variantBResult: variantBResult,
      variantBResultImage: variantBResultImage,
      variantBResultBtnText: variantBResultBtnText,
      variantBResultBtnLink: variantBResultBtnLink,
    );
