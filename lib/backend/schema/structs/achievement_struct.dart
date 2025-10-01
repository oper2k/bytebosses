// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AchievementStruct extends BaseStruct {
  AchievementStruct({
    String? id,
    int? order,
    String? name,
    String? image,
    String? congratulationText,
    String? congratulationBtnText,
    String? congratulationBtnLink,
  })  : _id = id,
        _order = order,
        _name = name,
        _image = image,
        _congratulationText = congratulationText,
        _congratulationBtnText = congratulationBtnText,
        _congratulationBtnLink = congratulationBtnLink;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  set order(int? val) => _order = val;

  void incrementOrder(int amount) => order = order + amount;

  bool hasOrder() => _order != null;

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

  // "congratulation_text" field.
  String? _congratulationText;
  String get congratulationText => _congratulationText ?? '';
  set congratulationText(String? val) => _congratulationText = val;

  bool hasCongratulationText() => _congratulationText != null;

  // "congratulation_btnText" field.
  String? _congratulationBtnText;
  String get congratulationBtnText => _congratulationBtnText ?? '';
  set congratulationBtnText(String? val) => _congratulationBtnText = val;

  bool hasCongratulationBtnText() => _congratulationBtnText != null;

  // "congratulation_btnLink" field.
  String? _congratulationBtnLink;
  String get congratulationBtnLink => _congratulationBtnLink ?? '';
  set congratulationBtnLink(String? val) => _congratulationBtnLink = val;

  bool hasCongratulationBtnLink() => _congratulationBtnLink != null;

  static AchievementStruct fromMap(Map<String, dynamic> data) =>
      AchievementStruct(
        id: data['id'] as String?,
        order: castToType<int>(data['order']),
        name: data['name'] as String?,
        image: data['image'] as String?,
        congratulationText: data['congratulation_text'] as String?,
        congratulationBtnText: data['congratulation_btnText'] as String?,
        congratulationBtnLink: data['congratulation_btnLink'] as String?,
      );

  static AchievementStruct? maybeFromMap(dynamic data) => data is Map
      ? AchievementStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'order': _order,
        'name': _name,
        'image': _image,
        'congratulation_text': _congratulationText,
        'congratulation_btnText': _congratulationBtnText,
        'congratulation_btnLink': _congratulationBtnLink,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'order': serializeParam(
          _order,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'congratulation_text': serializeParam(
          _congratulationText,
          ParamType.String,
        ),
        'congratulation_btnText': serializeParam(
          _congratulationBtnText,
          ParamType.String,
        ),
        'congratulation_btnLink': serializeParam(
          _congratulationBtnLink,
          ParamType.String,
        ),
      }.withoutNulls;

  static AchievementStruct fromSerializableMap(Map<String, dynamic> data) =>
      AchievementStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        order: deserializeParam(
          data['order'],
          ParamType.int,
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
        congratulationText: deserializeParam(
          data['congratulation_text'],
          ParamType.String,
          false,
        ),
        congratulationBtnText: deserializeParam(
          data['congratulation_btnText'],
          ParamType.String,
          false,
        ),
        congratulationBtnLink: deserializeParam(
          data['congratulation_btnLink'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AchievementStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AchievementStruct &&
        id == other.id &&
        order == other.order &&
        name == other.name &&
        image == other.image &&
        congratulationText == other.congratulationText &&
        congratulationBtnText == other.congratulationBtnText &&
        congratulationBtnLink == other.congratulationBtnLink;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        order,
        name,
        image,
        congratulationText,
        congratulationBtnText,
        congratulationBtnLink
      ]);
}

AchievementStruct createAchievementStruct({
  String? id,
  int? order,
  String? name,
  String? image,
  String? congratulationText,
  String? congratulationBtnText,
  String? congratulationBtnLink,
}) =>
    AchievementStruct(
      id: id,
      order: order,
      name: name,
      image: image,
      congratulationText: congratulationText,
      congratulationBtnText: congratulationBtnText,
      congratulationBtnLink: congratulationBtnLink,
    );
