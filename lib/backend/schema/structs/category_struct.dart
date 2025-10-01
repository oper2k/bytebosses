// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryStruct extends BaseStruct {
  CategoryStruct({
    String? id,
    String? name,
    String? image,
    int? cardsCount,
    List<CardStruct>? cardsList,
    int? order,
    String? resultText,
    String? resultImage,
    String? resultBtnText,
    String? resultBtnLink,
    String? unlockAchievementId,
    int? requiredGameDays,
  })  : _id = id,
        _name = name,
        _image = image,
        _cardsCount = cardsCount,
        _cardsList = cardsList,
        _order = order,
        _resultText = resultText,
        _resultImage = resultImage,
        _resultBtnText = resultBtnText,
        _resultBtnLink = resultBtnLink,
        _unlockAchievementId = unlockAchievementId,
        _requiredGameDays = requiredGameDays;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "cards_count" field.
  int? _cardsCount;
  int get cardsCount => _cardsCount ?? 10;
  set cardsCount(int? val) => _cardsCount = val;

  void incrementCardsCount(int amount) => cardsCount = cardsCount + amount;

  bool hasCardsCount() => _cardsCount != null;

  // "cards_list" field.
  List<CardStruct>? _cardsList;
  List<CardStruct> get cardsList => _cardsList ?? const [];
  set cardsList(List<CardStruct>? val) => _cardsList = val;

  void updateCardsList(Function(List<CardStruct>) updateFn) {
    updateFn(_cardsList ??= []);
  }

  bool hasCardsList() => _cardsList != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  set order(int? val) => _order = val;

  void incrementOrder(int amount) => order = order + amount;

  bool hasOrder() => _order != null;

  // "result_text" field.
  String? _resultText;
  String get resultText => _resultText ?? '';
  set resultText(String? val) => _resultText = val;

  bool hasResultText() => _resultText != null;

  // "result_image" field.
  String? _resultImage;
  String get resultImage => _resultImage ?? '';
  set resultImage(String? val) => _resultImage = val;

  bool hasResultImage() => _resultImage != null;

  // "result_btnText" field.
  String? _resultBtnText;
  String get resultBtnText => _resultBtnText ?? '';
  set resultBtnText(String? val) => _resultBtnText = val;

  bool hasResultBtnText() => _resultBtnText != null;

  // "result_btnLink" field.
  String? _resultBtnLink;
  String get resultBtnLink => _resultBtnLink ?? '';
  set resultBtnLink(String? val) => _resultBtnLink = val;

  bool hasResultBtnLink() => _resultBtnLink != null;

  // "unlockAchievement_id" field.
  String? _unlockAchievementId;
  String get unlockAchievementId => _unlockAchievementId ?? '';
  set unlockAchievementId(String? val) => _unlockAchievementId = val;

  bool hasUnlockAchievementId() => _unlockAchievementId != null;

  // "requiredGameDays" field.
  int? _requiredGameDays;
  int get requiredGameDays => _requiredGameDays ?? 0;
  set requiredGameDays(int? val) => _requiredGameDays = val;

  void incrementRequiredGameDays(int amount) =>
      requiredGameDays = requiredGameDays + amount;

  bool hasRequiredGameDays() => _requiredGameDays != null;

  static CategoryStruct fromMap(Map<String, dynamic> data) => CategoryStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        image: data['image'] as String?,
        cardsCount: castToType<int>(data['cards_count']),
        cardsList: getStructList(
          data['cards_list'],
          CardStruct.fromMap,
        ),
        order: castToType<int>(data['order']),
        resultText: data['result_text'] as String?,
        resultImage: data['result_image'] as String?,
        resultBtnText: data['result_btnText'] as String?,
        resultBtnLink: data['result_btnLink'] as String?,
        unlockAchievementId: data['unlockAchievement_id'] as String?,
        requiredGameDays: castToType<int>(data['requiredGameDays']),
      );

  static CategoryStruct? maybeFromMap(dynamic data) =>
      data is Map ? CategoryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'image': _image,
        'cards_count': _cardsCount,
        'cards_list': _cardsList?.map((e) => e.toMap()).toList(),
        'order': _order,
        'result_text': _resultText,
        'result_image': _resultImage,
        'result_btnText': _resultBtnText,
        'result_btnLink': _resultBtnLink,
        'unlockAchievement_id': _unlockAchievementId,
        'requiredGameDays': _requiredGameDays,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'cards_count': serializeParam(
          _cardsCount,
          ParamType.int,
        ),
        'cards_list': serializeParam(
          _cardsList,
          ParamType.DataStruct,
          isList: true,
        ),
        'order': serializeParam(
          _order,
          ParamType.int,
        ),
        'result_text': serializeParam(
          _resultText,
          ParamType.String,
        ),
        'result_image': serializeParam(
          _resultImage,
          ParamType.String,
        ),
        'result_btnText': serializeParam(
          _resultBtnText,
          ParamType.String,
        ),
        'result_btnLink': serializeParam(
          _resultBtnLink,
          ParamType.String,
        ),
        'unlockAchievement_id': serializeParam(
          _unlockAchievementId,
          ParamType.String,
        ),
        'requiredGameDays': serializeParam(
          _requiredGameDays,
          ParamType.int,
        ),
      }.withoutNulls;

  static CategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoryStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        cardsCount: deserializeParam(
          data['cards_count'],
          ParamType.int,
          false,
        ),
        cardsList: deserializeStructParam<CardStruct>(
          data['cards_list'],
          ParamType.DataStruct,
          true,
          structBuilder: CardStruct.fromSerializableMap,
        ),
        order: deserializeParam(
          data['order'],
          ParamType.int,
          false,
        ),
        resultText: deserializeParam(
          data['result_text'],
          ParamType.String,
          false,
        ),
        resultImage: deserializeParam(
          data['result_image'],
          ParamType.String,
          false,
        ),
        resultBtnText: deserializeParam(
          data['result_btnText'],
          ParamType.String,
          false,
        ),
        resultBtnLink: deserializeParam(
          data['result_btnLink'],
          ParamType.String,
          false,
        ),
        unlockAchievementId: deserializeParam(
          data['unlockAchievement_id'],
          ParamType.String,
          false,
        ),
        requiredGameDays: deserializeParam(
          data['requiredGameDays'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CategoryStruct &&
        id == other.id &&
        name == other.name &&
        image == other.image &&
        cardsCount == other.cardsCount &&
        listEquality.equals(cardsList, other.cardsList) &&
        order == other.order &&
        resultText == other.resultText &&
        resultImage == other.resultImage &&
        resultBtnText == other.resultBtnText &&
        resultBtnLink == other.resultBtnLink &&
        unlockAchievementId == other.unlockAchievementId &&
        requiredGameDays == other.requiredGameDays;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        image,
        cardsCount,
        cardsList,
        order,
        resultText,
        resultImage,
        resultBtnText,
        resultBtnLink,
        unlockAchievementId,
        requiredGameDays
      ]);
}

CategoryStruct createCategoryStruct({
  String? id,
  String? name,
  String? image,
  int? cardsCount,
  int? order,
  String? resultText,
  String? resultImage,
  String? resultBtnText,
  String? resultBtnLink,
  String? unlockAchievementId,
  int? requiredGameDays,
}) =>
    CategoryStruct(
      id: id,
      name: name,
      image: image,
      cardsCount: cardsCount,
      order: order,
      resultText: resultText,
      resultImage: resultImage,
      resultBtnText: resultBtnText,
      resultBtnLink: resultBtnLink,
      unlockAchievementId: unlockAchievementId,
      requiredGameDays: requiredGameDays,
    );
