// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ko';

  static String m0(version) => "OpenWeather 앱 ${version}";

  static String m1(duration) => "날씨 데이터는 ${duration}분 동안 캐시됩니다";

  static String m2(latitude, longitude) => "위도: ${latitude}, 경도: ${longitude}";

  static String m3(unit) => "현재: ${unit}";

  static String m4(count) => "${count}일 전";

  static String m5(temperature) => "체감 온도 ${temperature}";

  static String m6(count) => "${count}시간 전";

  static String m7(time) => "마지막 업데이트: ${time}";

  static String m8(count) => "${count}분 전";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about": MessageLookupByLibrary.simpleMessage("정보"),
    "apiInfo": MessageLookupByLibrary.simpleMessage(
      "이 앱은 OpenWeather One Call API 3.0을 사용합니다",
    ),
    "apiKeyDescription": MessageLookupByLibrary.simpleMessage(
      "날씨 데이터에 필요합니다. openweathermap.org에서 무료 API 키를 받으세요",
    ),
    "apiKeyHint": MessageLookupByLibrary.simpleMessage("OpenWeather API 키 입력"),
    "apiKeyMissing": MessageLookupByLibrary.simpleMessage(
      "API 키가 없습니다. 설정에서 API 키를 추가해 주세요.",
    ),
    "apiKeyTitle": MessageLookupByLibrary.simpleMessage("OpenWeather API 키"),
    "appTitle": MessageLookupByLibrary.simpleMessage("날씨 앱"),
    "appVersion": m0,
    "appearance": MessageLookupByLibrary.simpleMessage("모양"),
    "approximateLabel": MessageLookupByLibrary.simpleMessage("대략적"),
    "cacheCleared": MessageLookupByLibrary.simpleMessage("캐시를 성공적으로 지웠습니다"),
    "cacheDuration": m1,
    "cacheSettings": MessageLookupByLibrary.simpleMessage("캐시 설정"),
    "cancel": MessageLookupByLibrary.simpleMessage("취소"),
    "celsius": MessageLookupByLibrary.simpleMessage("섭씨 (°C)"),
    "clear": MessageLookupByLibrary.simpleMessage("지우기"),
    "clearCache": MessageLookupByLibrary.simpleMessage("캐시 지우기"),
    "clearCacheConfirmMessage": MessageLookupByLibrary.simpleMessage(
      "모든 캐시된 날씨 데이터가 지워집니다. 새 데이터를 가져와야 합니다.",
    ),
    "clearCacheConfirmTitle": MessageLookupByLibrary.simpleMessage("캐시 지우기"),
    "cloudinessDetail": MessageLookupByLibrary.simpleMessage("구름"),
    "coordinates": m2,
    "coverageLabel": MessageLookupByLibrary.simpleMessage("범위"),
    "currentLabel": MessageLookupByLibrary.simpleMessage("현재"),
    "currentLocalTime": MessageLookupByLibrary.simpleMessage("현재 현지 시간:"),
    "currentUnit": m3,
    "customizeAppearance": MessageLookupByLibrary.simpleMessage(
      "앱 테마 및 모양 사용자 지정",
    ),
    "customizeTheme": MessageLookupByLibrary.simpleMessage("테마 사용자 지정"),
    "dailyForecast": MessageLookupByLibrary.simpleMessage("7일 예보"),
    "darkMode": MessageLookupByLibrary.simpleMessage("다크 모드"),
    "dataSource": MessageLookupByLibrary.simpleMessage(
      "날씨 데이터는 OpenWeather에서 제공합니다",
    ),
    "daysAgo": m4,
    "daytime": MessageLookupByLibrary.simpleMessage("낮 시간"),
    "detailedInformation": MessageLookupByLibrary.simpleMessage("상세 정보"),
    "done": MessageLookupByLibrary.simpleMessage("완료"),
    "enableDarkTheme": MessageLookupByLibrary.simpleMessage("어두운 테마 활성화"),
    "englishLanguage": MessageLookupByLibrary.simpleMessage("English"),
    "fahrenheit": MessageLookupByLibrary.simpleMessage("화씨 (°F)"),
    "feelsLike": m5,
    "feelsLikeDetail": MessageLookupByLibrary.simpleMessage("체감 온도"),
    "followSystemTheme": MessageLookupByLibrary.simpleMessage("기기 테마 설정을 따릅니다"),
    "genericError": MessageLookupByLibrary.simpleMessage(
      "문제가 발생했습니다. 다시 시도해 주세요.",
    ),
    "hourlyForecast": MessageLookupByLibrary.simpleMessage("시간별 예보"),
    "hoursAgo": m6,
    "humidityDetail": MessageLookupByLibrary.simpleMessage("습도"),
    "justNow": MessageLookupByLibrary.simpleMessage("방금 전"),
    "koreanLanguage": MessageLookupByLibrary.simpleMessage("한국어"),
    "language": MessageLookupByLibrary.simpleMessage("언어"),
    "languageDescription": MessageLookupByLibrary.simpleMessage("애플리케이션 언어 변경"),
    "lastUpdated": m7,
    "location": MessageLookupByLibrary.simpleMessage("위치"),
    "locationError": MessageLookupByLibrary.simpleMessage("현재 위치를 가져올 수 없습니다."),
    "minutesAgo": m8,
    "nighttime": MessageLookupByLibrary.simpleMessage("밤 시간"),
    "noInternetError": MessageLookupByLibrary.simpleMessage(
      "인터넷 연결이 없습니다. 캐시된 데이터를 표시합니다.",
    ),
    "noWeatherData": MessageLookupByLibrary.simpleMessage("날씨 데이터를 사용할 수 없습니다"),
    "perceivedLabel": MessageLookupByLibrary.simpleMessage("체감"),
    "pressureDetail": MessageLookupByLibrary.simpleMessage("기압"),
    "preview": MessageLookupByLibrary.simpleMessage("미리보기"),
    "professionalTheme": MessageLookupByLibrary.simpleMessage("전문적인 테마"),
    "professionalThemeDescription": MessageLookupByLibrary.simpleMessage(
      "깔끔하고 세련된 테마",
    ),
    "relativeLabel": MessageLookupByLibrary.simpleMessage("상대적"),
    "retry": MessageLookupByLibrary.simpleMessage("재시도"),
    "save": MessageLookupByLibrary.simpleMessage("저장"),
    "seaLevelLabel": MessageLookupByLibrary.simpleMessage("해수면"),
    "searchForCity": MessageLookupByLibrary.simpleMessage("도시 검색"),
    "searchInstructions": MessageLookupByLibrary.simpleMessage(
      "도시를 검색하여 날씨 정보를 확인하세요",
    ),
    "searchLocation": MessageLookupByLibrary.simpleMessage("위치 검색"),
    "selectTheme": MessageLookupByLibrary.simpleMessage("테마 선택"),
    "settings": MessageLookupByLibrary.simpleMessage("설정"),
    "sunriseSunsetNote": MessageLookupByLibrary.simpleMessage(
      "참고: 일출 및 일몰 데이터는 예보 보기에서 확인할 수 있습니다",
    ),
    "systemDefault": MessageLookupByLibrary.simpleMessage("시스템 기본값"),
    "systemLanguage": MessageLookupByLibrary.simpleMessage("시스템 언어"),
    "temperatureDetail": MessageLookupByLibrary.simpleMessage("온도"),
    "temperatureUnits": MessageLookupByLibrary.simpleMessage("온도 단위"),
    "themeSettings": MessageLookupByLibrary.simpleMessage("테마 설정"),
    "timeOfDay": MessageLookupByLibrary.simpleMessage("하루 중 시간"),
    "today": MessageLookupByLibrary.simpleMessage("오늘"),
    "tomorrow": MessageLookupByLibrary.simpleMessage("내일"),
    "useCurrentLocation": MessageLookupByLibrary.simpleMessage("또는 현재 위치 사용"),
    "vibrantTheme": MessageLookupByLibrary.simpleMessage("생동감 있는 테마"),
    "vibrantThemeDescription": MessageLookupByLibrary.simpleMessage(
      "대담하고 화려한 테마",
    ),
    "vietnameseLanguage": MessageLookupByLibrary.simpleMessage("Tiếng Việt"),
    "viewDetails": MessageLookupByLibrary.simpleMessage("상세 날씨 정보 보기"),
    "visibilityDetail": MessageLookupByLibrary.simpleMessage("가시성"),
    "weatherAlerts": MessageLookupByLibrary.simpleMessage("날씨 경보"),
    "weatherCondition": MessageLookupByLibrary.simpleMessage("날씨 상태"),
    "weatherDetails": MessageLookupByLibrary.simpleMessage("날씨 상세 정보"),
    "windDirectionDetail": MessageLookupByLibrary.simpleMessage("풍향"),
    "windSpeedDetail": MessageLookupByLibrary.simpleMessage("풍속"),
  };
}
