// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? name,
    double? finLevel,
    int? coins,
    List<String>? completedQuestsIds,
    List<String>? completedCategoriesIds,
    List<String>? completedCardsIds,
    List<String>? completedAchievements,
    int? daysInGame,
    DateTime? firstLoginDate,
    bool? isEnablePush,
  })  : _name = name,
        _finLevel = finLevel,
        _coins = coins,
        _completedQuestsIds = completedQuestsIds,
        _completedCategoriesIds = completedCategoriesIds,
        _completedCardsIds = completedCardsIds,
        _completedAchievements = completedAchievements,
        _daysInGame = daysInGame,
        _firstLoginDate = firstLoginDate,
        _isEnablePush = isEnablePush;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "fin_level" field.
  double? _finLevel;
  double get finLevel => _finLevel ?? 0.0;
  set finLevel(double? val) => _finLevel = val;

  void incrementFinLevel(double amount) => finLevel = finLevel + amount;

  bool hasFinLevel() => _finLevel != null;

  // "coins" field.
  int? _coins;
  int get coins => _coins ?? 0;
  set coins(int? val) => _coins = val;

  void incrementCoins(int amount) => coins = coins + amount;

  bool hasCoins() => _coins != null;

  // "completed_quests_ids" field.
  List<String>? _completedQuestsIds;
  List<String> get completedQuestsIds => _completedQuestsIds ?? const [];
  set completedQuestsIds(List<String>? val) => _completedQuestsIds = val;

  void updateCompletedQuestsIds(Function(List<String>) updateFn) {
    updateFn(_completedQuestsIds ??= []);
  }

  bool hasCompletedQuestsIds() => _completedQuestsIds != null;

  // "completed_categories_ids" field.
  List<String>? _completedCategoriesIds;
  List<String> get completedCategoriesIds =>
      _completedCategoriesIds ?? const [];
  set completedCategoriesIds(List<String>? val) =>
      _completedCategoriesIds = val;

  void updateCompletedCategoriesIds(Function(List<String>) updateFn) {
    updateFn(_completedCategoriesIds ??= []);
  }

  bool hasCompletedCategoriesIds() => _completedCategoriesIds != null;

  // "completed_cards_ids" field.
  List<String>? _completedCardsIds;
  List<String> get completedCardsIds => _completedCardsIds ?? const [];
  set completedCardsIds(List<String>? val) => _completedCardsIds = val;

  void updateCompletedCardsIds(Function(List<String>) updateFn) {
    updateFn(_completedCardsIds ??= []);
  }

  bool hasCompletedCardsIds() => _completedCardsIds != null;

  // "completed_achievements" field.
  List<String>? _completedAchievements;
  List<String> get completedAchievements => _completedAchievements ?? const [];
  set completedAchievements(List<String>? val) => _completedAchievements = val;

  void updateCompletedAchievements(Function(List<String>) updateFn) {
    updateFn(_completedAchievements ??= []);
  }

  bool hasCompletedAchievements() => _completedAchievements != null;

  // "daysInGame" field.
  int? _daysInGame;
  int get daysInGame => _daysInGame ?? 0;
  set daysInGame(int? val) => _daysInGame = val;

  void incrementDaysInGame(int amount) => daysInGame = daysInGame + amount;

  bool hasDaysInGame() => _daysInGame != null;

  // "firstLoginDate" field.
  DateTime? _firstLoginDate;
  DateTime? get firstLoginDate => _firstLoginDate;
  set firstLoginDate(DateTime? val) => _firstLoginDate = val;

  bool hasFirstLoginDate() => _firstLoginDate != null;

  // "isEnablePush" field.
  bool? _isEnablePush;
  bool get isEnablePush => _isEnablePush ?? false;
  set isEnablePush(bool? val) => _isEnablePush = val;

  bool hasIsEnablePush() => _isEnablePush != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        name: data['name'] as String?,
        finLevel: castToType<double>(data['fin_level']),
        coins: castToType<int>(data['coins']),
        completedQuestsIds: getDataList(data['completed_quests_ids']),
        completedCategoriesIds: getDataList(data['completed_categories_ids']),
        completedCardsIds: getDataList(data['completed_cards_ids']),
        completedAchievements: getDataList(data['completed_achievements']),
        daysInGame: castToType<int>(data['daysInGame']),
        firstLoginDate: data['firstLoginDate'] as DateTime?,
        isEnablePush: data['isEnablePush'] as bool?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'fin_level': _finLevel,
        'coins': _coins,
        'completed_quests_ids': _completedQuestsIds,
        'completed_categories_ids': _completedCategoriesIds,
        'completed_cards_ids': _completedCardsIds,
        'completed_achievements': _completedAchievements,
        'daysInGame': _daysInGame,
        'firstLoginDate': _firstLoginDate,
        'isEnablePush': _isEnablePush,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'fin_level': serializeParam(
          _finLevel,
          ParamType.double,
        ),
        'coins': serializeParam(
          _coins,
          ParamType.int,
        ),
        'completed_quests_ids': serializeParam(
          _completedQuestsIds,
          ParamType.String,
          isList: true,
        ),
        'completed_categories_ids': serializeParam(
          _completedCategoriesIds,
          ParamType.String,
          isList: true,
        ),
        'completed_cards_ids': serializeParam(
          _completedCardsIds,
          ParamType.String,
          isList: true,
        ),
        'completed_achievements': serializeParam(
          _completedAchievements,
          ParamType.String,
          isList: true,
        ),
        'daysInGame': serializeParam(
          _daysInGame,
          ParamType.int,
        ),
        'firstLoginDate': serializeParam(
          _firstLoginDate,
          ParamType.DateTime,
        ),
        'isEnablePush': serializeParam(
          _isEnablePush,
          ParamType.bool,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        finLevel: deserializeParam(
          data['fin_level'],
          ParamType.double,
          false,
        ),
        coins: deserializeParam(
          data['coins'],
          ParamType.int,
          false,
        ),
        completedQuestsIds: deserializeParam<String>(
          data['completed_quests_ids'],
          ParamType.String,
          true,
        ),
        completedCategoriesIds: deserializeParam<String>(
          data['completed_categories_ids'],
          ParamType.String,
          true,
        ),
        completedCardsIds: deserializeParam<String>(
          data['completed_cards_ids'],
          ParamType.String,
          true,
        ),
        completedAchievements: deserializeParam<String>(
          data['completed_achievements'],
          ParamType.String,
          true,
        ),
        daysInGame: deserializeParam(
          data['daysInGame'],
          ParamType.int,
          false,
        ),
        firstLoginDate: deserializeParam(
          data['firstLoginDate'],
          ParamType.DateTime,
          false,
        ),
        isEnablePush: deserializeParam(
          data['isEnablePush'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserStruct &&
        name == other.name &&
        finLevel == other.finLevel &&
        coins == other.coins &&
        listEquality.equals(completedQuestsIds, other.completedQuestsIds) &&
        listEquality.equals(
            completedCategoriesIds, other.completedCategoriesIds) &&
        listEquality.equals(completedCardsIds, other.completedCardsIds) &&
        listEquality.equals(
            completedAchievements, other.completedAchievements) &&
        daysInGame == other.daysInGame &&
        firstLoginDate == other.firstLoginDate &&
        isEnablePush == other.isEnablePush;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        finLevel,
        coins,
        completedQuestsIds,
        completedCategoriesIds,
        completedCardsIds,
        completedAchievements,
        daysInGame,
        firstLoginDate,
        isEnablePush
      ]);
}

UserStruct createUserStruct({
  String? name,
  double? finLevel,
  int? coins,
  int? daysInGame,
  DateTime? firstLoginDate,
  bool? isEnablePush,
}) =>
    UserStruct(
      name: name,
      finLevel: finLevel,
      coins: coins,
      daysInGame: daysInGame,
      firstLoginDate: firstLoginDate,
      isEnablePush: isEnablePush,
    );
