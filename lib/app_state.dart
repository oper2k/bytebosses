import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _achievements = prefs
              .getStringList('ff_achievements')
              ?.map((x) {
                try {
                  return AchievementStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _achievements;
    });
    _safeInit(() {
      _quests = prefs
              .getStringList('ff_quests')
              ?.map((x) {
                try {
                  return QuestStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _quests;
    });
    _safeInit(() {
      _gameCategories = prefs
              .getStringList('ff_gameCategories')
              ?.map((x) {
                try {
                  return CategoryStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _gameCategories;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_userData')) {
        try {
          final serializedData = prefs.getString('ff_userData') ?? '{}';
          _userData =
              UserStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<AchievementStruct> _achievements = [
    AchievementStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"romantic\",\"order\":\"1\",\"name\":\"Романтик\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hackathon-p74jkp/assets/oz8zo1gbf99n/heart.webp\",\"congratulation_text\":\"Ура, поздравляем романтик!\",\"congratulation_video\":\"https://assets.mixkit.co/videos/529/529-720.mp4\",\"congratulation_btnText\":\"Вам кешбек 20% на цветы\",\"congratulation_btnLink\":\"https://www.gazprombank.ru/personal/page/loyalty/\"}')),
    AchievementStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"safe\",\"order\":\"2\",\"name\":\"Безопасный\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hackathon-p74jkp/assets/frpib78j9mqo/wheel.webp\",\"congratulation_text\":\"Ура, ты водила класс!\",\"congratulation_video\":\"https://assets.mixkit.co/videos/529/529-720.mp4\",\"congratulation_btnText\":\"Заберите кешбек 10% на АЗС\",\"congratulation_btnLink\":\"https://www.gazprombank.ru/personal/page/loyalty/\"}')),
    AchievementStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"economical\",\"order\":\"3\",\"name\":\"Бережливый\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hackathon-p74jkp/assets/cbgapbwnbt70/pig.webp\",\"congratulation_text\":\"Вы - мастер экономии!\",\"congratulation_video\":\"https://assets.mixkit.co/videos/529/529-720.mp4\",\"congratulation_btnText\":\"Получите +4% к ставке по депозиту\",\"congratulation_btnLink\":\"https://www.gazprombank.ru/personal/increase/deposits/\"}')),
    AchievementStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"housemaster\",\"order\":\"4\",\"name\":\"Хозяйственный\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hackathon-p74jkp/assets/voxwv7guhw0w/key.webp\",\"congratulation_text\":\"У вас всё по полочкам!\",\"congratulation_video\":\"https://assets.mixkit.co/videos/529/529-720.mp4\",\"congratulation_btnText\":\"Страхование жилья со скидкой 50%\",\"congratulation_btnLink\":\"https://www.gazprombank.ru/personal/page/house/\"}'))
  ];
  List<AchievementStruct> get achievements => _achievements;
  set achievements(List<AchievementStruct> value) {
    _achievements = value;
    prefs.setStringList(
        'ff_achievements', value.map((x) => x.serialize()).toList());
  }

  void addToAchievements(AchievementStruct value) {
    achievements.add(value);
    prefs.setStringList(
        'ff_achievements', _achievements.map((x) => x.serialize()).toList());
  }

  void removeFromAchievements(AchievementStruct value) {
    achievements.remove(value);
    prefs.setStringList(
        'ff_achievements', _achievements.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAchievements(int index) {
    achievements.removeAt(index);
    prefs.setStringList(
        'ff_achievements', _achievements.map((x) => x.serialize()).toList());
  }

  void updateAchievementsAtIndex(
    int index,
    AchievementStruct Function(AchievementStruct) updateFn,
  ) {
    achievements[index] = updateFn(_achievements[index]);
    prefs.setStringList(
        'ff_achievements', _achievements.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAchievements(int index, AchievementStruct value) {
    achievements.insert(index, value);
    prefs.setStringList(
        'ff_achievements', _achievements.map((x) => x.serialize()).toList());
  }

  List<QuestStruct> _quests = [
    QuestStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"inviteFriend\",\"order\":\"1\",\"name\":\"Пригласи друга в игру,\\nбонусы тебе и ему\",\"reward_coins\":\"100\",\"is_show_shareIcon\":\"true\",\"open_date\":\"1759314240000\",\"expired_date\":\"1764500460000\"}')),
    QuestStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"buyFuel\",\"order\":\"2\",\"name\":\"Расплатись картой\\nгазпромбанка на\\nзаправке на 1000₽ или\\nбольше\",\"reward_coins\":\"200\",\"is_show_shareIcon\":\"false\",\"open_date\":\"1759314300000\",\"expired_date\":\"1761825480000\"}')),
    QuestStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"promo\",\"order\":\"3\",\"name\":\"Купи слона\",\"reward_coins\":\"500\",\"is_show_shareIcon\":\"false\",\"open_date\":\"1761906300000\",\"expired_date\":\"1764500460000\"}')),
    QuestStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"payMobile\",\"order\":\"4\",\"name\":\"Пополни мобильный с карты газпромбанка\",\"reward_coins\":\"120\",\"is_show_shareIcon\":\"false\",\"open_date\":\"1761908520000\",\"expired_date\":\"1759316503673\"}'))
  ];
  List<QuestStruct> get quests => _quests;
  set quests(List<QuestStruct> value) {
    _quests = value;
    prefs.setStringList('ff_quests', value.map((x) => x.serialize()).toList());
  }

  void addToQuests(QuestStruct value) {
    quests.add(value);
    prefs.setStringList(
        'ff_quests', _quests.map((x) => x.serialize()).toList());
  }

  void removeFromQuests(QuestStruct value) {
    quests.remove(value);
    prefs.setStringList(
        'ff_quests', _quests.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromQuests(int index) {
    quests.removeAt(index);
    prefs.setStringList(
        'ff_quests', _quests.map((x) => x.serialize()).toList());
  }

  void updateQuestsAtIndex(
    int index,
    QuestStruct Function(QuestStruct) updateFn,
  ) {
    quests[index] = updateFn(_quests[index]);
    prefs.setStringList(
        'ff_quests', _quests.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInQuests(int index, QuestStruct value) {
    quests.insert(index, value);
    prefs.setStringList(
        'ff_quests', _quests.map((x) => x.serialize()).toList());
  }

  List<CategoryStruct> _gameCategories = [
    CategoryStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"heartAndWallet\",\"name\":\"Сердце и кошелёк\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hackathon-p74jkp/assets/by5kx3ta0hzj/cashHeart.webp\",\"cards_count\":\"10\",\"cards_list\":\"[]\",\"order\":\"1\",\"result_text\":\"Романтик с головой!\\nТы управляешь чувствами\\nи финансами!\",\"result_image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hackathon-p74jkp/assets/oz8zo1gbf99n/heart.webp\",\"result_btnText\":\"Узнать про накопительный счет\",\"result_btnLink\":\"https://www.gazprombank.ru/accounts/save-easy/\",\"requiredGameDays\":\"0\"}')),
    CategoryStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"HomeSweetHome\",\"name\":\"Дом, милый дом\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hackathon-p74jkp/assets/8vbxfrj6khx5/house.webp\",\"cards_count\":\"10\",\"cards_list\":\"[]\",\"order\":\"2\",\"result_text\":\"Вау, молодец!\",\"result_image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hackathon-p74jkp/assets/anmfj08v7pg2/keyLight.webp\",\"result_btnText\":\"Кнопка\",\"result_btnLink\":\"https://www.gazprombank.ru/personal/mortgage/\",\"requiredGameDays\":\"0\"}')),
    CategoryStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"turnIsNotThere\",\"name\":\"Поворот не туда\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hackathon-p74jkp/assets/5mngkxegtree/car.webp\",\"cards_count\":\"10\",\"cards_list\":\"[]\",\"order\":\"3\",\"result_text\":\"Вау, красавчик!\",\"result_image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hackathon-p74jkp/assets/frpib78j9mqo/wheel.webp\",\"result_btnText\":\"Автокредит по льготной ставке\",\"result_btnLink\":\"https://www.gazprombank.ru/personal/avtokredit/5601789/\",\"requiredGameDays\":\"1\"}')),
    CategoryStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"dayX\",\"name\":\"День X\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hackathon-p74jkp/assets/w3632akyaytw/mix.webp\",\"cards_count\":\"10\",\"cards_list\":\"[]\",\"order\":\"4\",\"result_text\":\"Урааааааа!\",\"result_image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hackathon-p74jkp/assets/cbgapbwnbt70/pig.webp\",\"result_btnText\":\"Заработай больше!\",\"result_btnLink\":\"https://www.gazprombank.ru/personal/page/pds/\",\"requiredGameDays\":\"1\"}'))
  ];
  List<CategoryStruct> get gameCategories => _gameCategories;
  set gameCategories(List<CategoryStruct> value) {
    _gameCategories = value;
    prefs.setStringList(
        'ff_gameCategories', value.map((x) => x.serialize()).toList());
  }

  void addToGameCategories(CategoryStruct value) {
    gameCategories.add(value);
    prefs.setStringList('ff_gameCategories',
        _gameCategories.map((x) => x.serialize()).toList());
  }

  void removeFromGameCategories(CategoryStruct value) {
    gameCategories.remove(value);
    prefs.setStringList('ff_gameCategories',
        _gameCategories.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromGameCategories(int index) {
    gameCategories.removeAt(index);
    prefs.setStringList('ff_gameCategories',
        _gameCategories.map((x) => x.serialize()).toList());
  }

  void updateGameCategoriesAtIndex(
    int index,
    CategoryStruct Function(CategoryStruct) updateFn,
  ) {
    gameCategories[index] = updateFn(_gameCategories[index]);
    prefs.setStringList('ff_gameCategories',
        _gameCategories.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInGameCategories(int index, CategoryStruct value) {
    gameCategories.insert(index, value);
    prefs.setStringList('ff_gameCategories',
        _gameCategories.map((x) => x.serialize()).toList());
  }

  UserStruct _userData = UserStruct.fromSerializableMap(jsonDecode(
      '{\"name\":\"Игрок\",\"fin_level\":\"0\",\"coins\":\"0\",\"completed_quests_ids\":\"[]\",\"completed_categories_ids\":\"[]\",\"completed_questions_ids\":\"[]\",\"daysInGame\":\"0\"}'));
  UserStruct get userData => _userData;
  set userData(UserStruct value) {
    _userData = value;
    prefs.setString('ff_userData', value.serialize());
  }

  void updateUserDataStruct(Function(UserStruct) updateFn) {
    updateFn(_userData);
    prefs.setString('ff_userData', _userData.serialize());
  }

  bool _isShowCoinsAnimation = false;
  bool get isShowCoinsAnimation => _isShowCoinsAnimation;
  set isShowCoinsAnimation(bool value) {
    _isShowCoinsAnimation = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
