// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
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
  String get localeName => 'vi';

  static String m0(version) => "Ứng Dụng OpenWeather ${version}";

  static String m1(duration) =>
      "Dữ liệu thời tiết được lưu trong bộ nhớ đệm trong ${duration} phút";

  static String m2(latitude, longitude) =>
      "Vĩ độ: ${latitude}, Kinh độ: ${longitude}";

  static String m3(unit) => "Hiện tại: ${unit}";

  static String m4(count) => "${count} ngày trước";

  static String m5(temperature) => "Cảm giác như ${temperature}";

  static String m6(count) => "${count} giờ trước";

  static String m7(time) => "Cập nhật lần cuối: ${time}";

  static String m8(count) => "${count} phút trước";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about": MessageLookupByLibrary.simpleMessage("Giới Thiệu"),
    "apiInfo": MessageLookupByLibrary.simpleMessage(
      "Ứng dụng này sử dụng OpenWeather One Call API 3.0",
    ),
    "apiKeyDescription": MessageLookupByLibrary.simpleMessage(
      "Cần thiết cho dữ liệu thời tiết. Nhận khóa API miễn phí tại openweathermap.org",
    ),
    "apiKeyHint": MessageLookupByLibrary.simpleMessage(
      "Nhập Khóa API OpenWeather",
    ),
    "apiKeyMissing": MessageLookupByLibrary.simpleMessage(
      "Thiếu khóa API. Vui lòng thêm khóa API trong cài đặt.",
    ),
    "apiKeyTitle": MessageLookupByLibrary.simpleMessage("Khóa API OpenWeather"),
    "appTitle": MessageLookupByLibrary.simpleMessage("Ứng Dụng Thời Tiết"),
    "appVersion": m0,
    "appearance": MessageLookupByLibrary.simpleMessage("Giao Diện"),
    "approximateLabel": MessageLookupByLibrary.simpleMessage("Xấp xỉ"),
    "cacheCleared": MessageLookupByLibrary.simpleMessage(
      "Đã xóa bộ nhớ đệm thành công",
    ),
    "cacheDuration": m1,
    "cacheSettings": MessageLookupByLibrary.simpleMessage("Cài Đặt Bộ Nhớ Đệm"),
    "cancel": MessageLookupByLibrary.simpleMessage("Hủy"),
    "celsius": MessageLookupByLibrary.simpleMessage("Độ C (°C)"),
    "clear": MessageLookupByLibrary.simpleMessage("Xóa"),
    "clearCache": MessageLookupByLibrary.simpleMessage("Xóa Bộ Nhớ Đệm"),
    "clearCacheConfirmMessage": MessageLookupByLibrary.simpleMessage(
      "Điều này sẽ xóa tất cả dữ liệu thời tiết trong bộ nhớ đệm. Bạn sẽ cần tải dữ liệu mới.",
    ),
    "clearCacheConfirmTitle": MessageLookupByLibrary.simpleMessage(
      "Xóa Bộ Nhớ Đệm",
    ),
    "cloudinessDetail": MessageLookupByLibrary.simpleMessage("Mây"),
    "coordinates": m2,
    "coverageLabel": MessageLookupByLibrary.simpleMessage("Phạm vi"),
    "currentLabel": MessageLookupByLibrary.simpleMessage("Hiện tại"),
    "currentLocalTime": MessageLookupByLibrary.simpleMessage(
      "Thời gian địa phương hiện tại:",
    ),
    "currentUnit": m3,
    "customizeAppearance": MessageLookupByLibrary.simpleMessage(
      "Tùy chỉnh giao diện và theme ứng dụng",
    ),
    "customizeTheme": MessageLookupByLibrary.simpleMessage(
      "Tùy Chỉnh Giao Diện",
    ),
    "dailyForecast": MessageLookupByLibrary.simpleMessage("Dự Báo 7 Ngày"),
    "darkMode": MessageLookupByLibrary.simpleMessage("Chế Độ Tối"),
    "dataSource": MessageLookupByLibrary.simpleMessage(
      "Dữ liệu thời tiết được cung cấp bởi OpenWeather",
    ),
    "daysAgo": m4,
    "daytime": MessageLookupByLibrary.simpleMessage("Ban Ngày"),
    "detailedInformation": MessageLookupByLibrary.simpleMessage(
      "Thông Tin Chi Tiết",
    ),
    "done": MessageLookupByLibrary.simpleMessage("Xong"),
    "enableDarkTheme": MessageLookupByLibrary.simpleMessage(
      "Bật giao diện tối",
    ),
    "englishLanguage": MessageLookupByLibrary.simpleMessage("English"),
    "fahrenheit": MessageLookupByLibrary.simpleMessage("Độ F (°F)"),
    "feelsLike": m5,
    "feelsLikeDetail": MessageLookupByLibrary.simpleMessage("Cảm Giác Như"),
    "followSystemTheme": MessageLookupByLibrary.simpleMessage(
      "Theo cài đặt giao diện của thiết bị",
    ),
    "genericError": MessageLookupByLibrary.simpleMessage(
      "Đã xảy ra lỗi. Vui lòng thử lại.",
    ),
    "hourlyForecast": MessageLookupByLibrary.simpleMessage("Dự Báo Theo Giờ"),
    "hoursAgo": m6,
    "humidityDetail": MessageLookupByLibrary.simpleMessage("Độ Ẩm"),
    "justNow": MessageLookupByLibrary.simpleMessage("Vừa xong"),
    "koreanLanguage": MessageLookupByLibrary.simpleMessage("한국어"),
    "language": MessageLookupByLibrary.simpleMessage("Ngôn Ngữ"),
    "languageDescription": MessageLookupByLibrary.simpleMessage(
      "Thay đổi ngôn ngữ ứng dụng",
    ),
    "lastUpdated": m7,
    "location": MessageLookupByLibrary.simpleMessage("Vị Trí"),
    "locationError": MessageLookupByLibrary.simpleMessage(
      "Không thể lấy vị trí hiện tại.",
    ),
    "minutesAgo": m8,
    "nighttime": MessageLookupByLibrary.simpleMessage("Ban Đêm"),
    "noInternetError": MessageLookupByLibrary.simpleMessage(
      "Không có kết nối internet. Hiển thị dữ liệu từ bộ nhớ đệm.",
    ),
    "noWeatherData": MessageLookupByLibrary.simpleMessage(
      "Không có dữ liệu thời tiết",
    ),
    "perceivedLabel": MessageLookupByLibrary.simpleMessage("Cảm nhận"),
    "pressureDetail": MessageLookupByLibrary.simpleMessage("Áp Suất"),
    "preview": MessageLookupByLibrary.simpleMessage("Xem Trước"),
    "professionalTheme": MessageLookupByLibrary.simpleMessage("Chuyên Nghiệp"),
    "professionalThemeDescription": MessageLookupByLibrary.simpleMessage(
      "Giao diện sạch và tinh tế",
    ),
    "relativeLabel": MessageLookupByLibrary.simpleMessage("Tương đối"),
    "retry": MessageLookupByLibrary.simpleMessage("Thử Lại"),
    "save": MessageLookupByLibrary.simpleMessage("Lưu"),
    "seaLevelLabel": MessageLookupByLibrary.simpleMessage("Mực nước biển"),
    "searchForCity": MessageLookupByLibrary.simpleMessage("Tìm kiếm thành phố"),
    "searchInstructions": MessageLookupByLibrary.simpleMessage(
      "Tìm kiếm thành phố để xem thông tin thời tiết",
    ),
    "searchLocation": MessageLookupByLibrary.simpleMessage("Tìm Kiếm Địa Điểm"),
    "selectTheme": MessageLookupByLibrary.simpleMessage("Chọn Giao Diện"),
    "settings": MessageLookupByLibrary.simpleMessage("Cài Đặt"),
    "sunriseSunsetNote": MessageLookupByLibrary.simpleMessage(
      "Lưu ý: Dữ liệu về bình minh và hoàng hôn có sẵn trong phần dự báo",
    ),
    "systemDefault": MessageLookupByLibrary.simpleMessage("Mặc Định Hệ Thống"),
    "systemLanguage": MessageLookupByLibrary.simpleMessage("Ngôn Ngữ Hệ Thống"),
    "temperatureDetail": MessageLookupByLibrary.simpleMessage("Nhiệt Độ"),
    "temperatureUnits": MessageLookupByLibrary.simpleMessage("Đơn Vị Nhiệt Độ"),
    "themeSettings": MessageLookupByLibrary.simpleMessage("Cài Đặt Giao Diện"),
    "timeOfDay": MessageLookupByLibrary.simpleMessage("Thời Gian Trong Ngày"),
    "today": MessageLookupByLibrary.simpleMessage("Hôm nay"),
    "tomorrow": MessageLookupByLibrary.simpleMessage("Ngày mai"),
    "useCurrentLocation": MessageLookupByLibrary.simpleMessage(
      "Hoặc sử dụng vị trí hiện tại",
    ),
    "vibrantTheme": MessageLookupByLibrary.simpleMessage("Sống Động"),
    "vibrantThemeDescription": MessageLookupByLibrary.simpleMessage(
      "Giao diện đậm và đầy màu sắc",
    ),
    "vietnameseLanguage": MessageLookupByLibrary.simpleMessage("Tiếng Việt"),
    "viewDetails": MessageLookupByLibrary.simpleMessage(
      "Xem chi tiết thông tin thời tiết",
    ),
    "visibilityDetail": MessageLookupByLibrary.simpleMessage("Tầm Nhìn"),
    "weatherAlerts": MessageLookupByLibrary.simpleMessage("Cảnh Báo Thời Tiết"),
    "weatherCondition": MessageLookupByLibrary.simpleMessage(
      "Điều Kiện Thời Tiết",
    ),
    "weatherDetails": MessageLookupByLibrary.simpleMessage(
      "Chi Tiết Thời Tiết",
    ),
    "windDirectionDetail": MessageLookupByLibrary.simpleMessage("Hướng Gió"),
    "windSpeedDetail": MessageLookupByLibrary.simpleMessage("Tốc Độ Gió"),
  };
}
