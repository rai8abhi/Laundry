class AppConstants {
  static String DATE_DISPLAY_FORMAT = "yyyy-MM-dd";
  static DateTime DEFAULT_FIRST_DATE = DateTime(1900, 1, 1);
  static DateTime DEFAULT_LAST_DATE = DateTime.now().add(Duration(days: 1095));
  static int DEFAULT_TOAST_DURATION = 10; // 3;
  static int DEFAULT_SNACKBAR_DURATION = 3;
  static int PASSWORD_MIN_LENGTH = 8;
  static int API_DEFAULT_TIMEOUT = 15;

  static String CHANNEL = 'OC-App';
  static String LOGOUT_LINKTYPE = 'logout';

  static String SETTINGS_RESET_PASSWORD = '/changepassword';
  static String CHANGE_LANGUAGE_LINKTYPE = '/changelanguage';

  // documents handling keys
  static const String DOC_ID_FRONT = '001';
  static const String DOC_ID_BACK = '002';
  static const String DOC_SIGNATURE = '003';
  static const String DOC_Company_Letter = '004';
  static const String DOC_SIGNATURE_REC = '016';

  static const String DOC_ID_FRONT_REC = '010';
  static const String DOC_ID_BACK_REC = '011';

  /*
  001 ID Front Side
  002 ID Back Side
  003 Signature
  004 Company Letter
  005 Proof of residence
  006 Email
  007 National ID
  008 Resident ID
  009 Passport Copy
  */
}
