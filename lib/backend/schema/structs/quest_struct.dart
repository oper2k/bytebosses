// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestStruct extends BaseStruct {
  QuestStruct({
    String? id,
    int? order,
    String? name,
    int? rewardCoins,
    bool? isShowShareIcon,
    DateTime? openDate,
    DateTime? expiredDate,
  })  : _id = id,
        _order = order,
        _name = name,
        _rewardCoins = rewardCoins,
        _isShowShareIcon = isShowShareIcon,
        _openDate = openDate,
        _expiredDate = expiredDate;

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

  // "reward_coins" field.
  int? _rewardCoins;
  int get rewardCoins => _rewardCoins ?? 0;
  set rewardCoins(int? val) => _rewardCoins = val;

  void incrementRewardCoins(int amount) => rewardCoins = rewardCoins + amount;

  bool hasRewardCoins() => _rewardCoins != null;

  // "is_show_shareIcon" field.
  bool? _isShowShareIcon;
  bool get isShowShareIcon => _isShowShareIcon ?? false;
  set isShowShareIcon(bool? val) => _isShowShareIcon = val;

  bool hasIsShowShareIcon() => _isShowShareIcon != null;

  // "open_date" field.
  DateTime? _openDate;
  DateTime get openDate => _openDate ?? DateTime.fromMicrosecondsSinceEpoch(0);
  set openDate(DateTime? val) => _openDate = val;

  bool hasOpenDate() => _openDate != null;

  // "expired_date" field.
  DateTime? _expiredDate;
  DateTime? get expiredDate => _expiredDate;
  set expiredDate(DateTime? val) => _expiredDate = val;

  bool hasExpiredDate() => _expiredDate != null;

  static QuestStruct fromMap(Map<String, dynamic> data) => QuestStruct(
        id: data['id'] as String?,
        order: castToType<int>(data['order']),
        name: data['name'] as String?,
        rewardCoins: castToType<int>(data['reward_coins']),
        isShowShareIcon: data['is_show_shareIcon'] as bool?,
        openDate: data['open_date'] as DateTime?,
        expiredDate: data['expired_date'] as DateTime?,
      );

  static QuestStruct? maybeFromMap(dynamic data) =>
      data is Map ? QuestStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'order': _order,
        'name': _name,
        'reward_coins': _rewardCoins,
        'is_show_shareIcon': _isShowShareIcon,
        'open_date': _openDate,
        'expired_date': _expiredDate,
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
        'reward_coins': serializeParam(
          _rewardCoins,
          ParamType.int,
        ),
        'is_show_shareIcon': serializeParam(
          _isShowShareIcon,
          ParamType.bool,
        ),
        'open_date': serializeParam(
          _openDate,
          ParamType.DateTime,
        ),
        'expired_date': serializeParam(
          _expiredDate,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static QuestStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestStruct(
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
        rewardCoins: deserializeParam(
          data['reward_coins'],
          ParamType.int,
          false,
        ),
        isShowShareIcon: deserializeParam(
          data['is_show_shareIcon'],
          ParamType.bool,
          false,
        ),
        openDate: deserializeParam(
          data['open_date'],
          ParamType.DateTime,
          false,
        ),
        expiredDate: deserializeParam(
          data['expired_date'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'QuestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuestStruct &&
        id == other.id &&
        order == other.order &&
        name == other.name &&
        rewardCoins == other.rewardCoins &&
        isShowShareIcon == other.isShowShareIcon &&
        openDate == other.openDate &&
        expiredDate == other.expiredDate;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, order, name, rewardCoins, isShowShareIcon, openDate, expiredDate]);
}

QuestStruct createQuestStruct({
  String? id,
  int? order,
  String? name,
  int? rewardCoins,
  bool? isShowShareIcon,
  DateTime? openDate,
  DateTime? expiredDate,
}) =>
    QuestStruct(
      id: id,
      order: order,
      name: name,
      rewardCoins: rewardCoins,
      isShowShareIcon: isShowShareIcon,
      openDate: openDate,
      expiredDate: expiredDate,
    );
