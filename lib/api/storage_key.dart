class StorageKey {
  static const String userInfo = 'user_info';
  static const String userCred = 'userCred';
  static const String token = 'token';
  static const String mobile = 'mobile';
  static const String email = 'mobile';
  static const String language = 'language';


  static List<String> get allKeys => [
        userInfo,
        token,
        mobile,
        email,
      ];
}
