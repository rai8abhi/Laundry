class LocalLOVData {
  static List<Map<String, dynamic>> languages1 = [
    {"id": "select", "name": "Select"},
    {"id": "English", "name": "English"},
    {"id": "Arabic", "name": "Arabic"},
  ];

  static List<Map<String, dynamic>> languages = [
    {"id": "select", "name": "Select"},
    {"id": "1", "name": "English"},
    {"id": "11", "name": "Arabic"},
  ];

  static List<Map<String, dynamic>> genderlist = [
    {"id": "select", "name": "Select"},
    {"id": "Male", "name": "Male"},
    {"id": "Female", "name": "Female"},
    {"id": "NA", "name": "NA"},
  ];

  static List<Map<String, dynamic>> idTypeList = [
    {"id": "select", "name": "Select"},
    {"id": "101", "name": "National ID Number"},
    {"id": "104", "name": "Residence Number"},
    {"id": "102", "name": "Passport Number"},
    {"id": "103", "name": "Labour Card"},
    {"id": "105", "name": "Company Registration Number"},
  ];

  static List<Map<String, dynamic>> serviceTypeList = [
    {"id": "select", "name": "Select"},
    {"id": "14", "name": "Mobile Prepaid"},
    {"id": "9", "name": "Mobile Postpaid"},
    {"id": "28", "name": "Internet Login id"},
    {"id": "200", "name": "Fixed Line Number"},
  ];

  static List<Map<String, dynamic>> channelTypeList = [
    {"id": "select", "name": "Select"},
    {"id": "outlet", "name": "Outlet"},
    {"id": "outdoor", "name": "OutDoor Sales"},
  ];

  static List<Map<String, dynamic>> vanityTypeList = [
    {"id": "select", "name": "Select"},
    {"id": "0", "name": "Normal"},
    {"id": "2", "name": "Silver"},
    {"id": "1", "name": "Gold"},
    {"id": "3", "name": "Diamond"},
  ];

  static List<Map<String, dynamic>> regionTypeList = [
    {"id": "select", "name": "Select"},
    {"id": "Al-Batinah North", "name": "Al-Batinah North"},
    {"id": "Al-Batinah North", "name": "Al-Batinah North"},
    {"id": "Batinah & Musandam", "name": "Batinah & Musandam"},
    {"id": "Dhakliya & Dhahaira", "name": "Dhakliya & Dhahaira"},
    {"id": "Dhofar", "name": "Dhofar"},
    {"id": "Muscat", "name": "Muscat"},
    {"id": "Online (OSCP)", "name": "Online (OSCP)"},
    {"id": "Sharqiya", "name": "Sharqiya"},
  ];

  //Al-Batinah North, Al-Batinah South, Batinah & Musandam,  Dhakliya &Dhahaira, Dhofar, Muscat , Online (OSCP), Sharqiya

  static List<Map<String, dynamic>> titles = [
    {"id": "select", "name": "Select"},
    {"id": "MR.", "name": "MR."},
    {"id": "MRS", "name": "MRS"},
    {"id": "Highness", "name": "Highness"},
    {"id": "DR.", "name": "DR."},
    {"id": "ALMUKARAM", "name": "ALMUKARAM"},
    {"id": "GENERAL", "name": "GENERAL"},
    {"id": "H.E", "name": "H.E"},
    {"id": "H.E.M", "name": "H.E.M"},
    {"id": "H.E AL WALY", "name": "H.E AL WALY"},
    {"id": "H.E SHEIK", "name": "H.E SHEIK"},
    {"id": "MISS", "name": "MISS"},
    {"id": "SAYYID", "name": "SAYYID"},
    {"id": "SAYYIDA", "name": "SAYYIDA"},
  ];

  static List<Map<String, dynamic>> vanities = [
    {"id": "0", "name": "Normal"},
    {"id": "2", "name": "Silver"},
    // { "id": "1", "name": "Gold", "disabled": true },
    // { "id": "3", "name": "Diamond", "disabled": true },
  ];

  static List<Map<String, dynamic>> accountTypes = [
    {"id": "VOICE", "name": "Voice + Data"},
    {"id": "DATA", "name": "Data Only"},
  ];

  static List<Map<String, dynamic>> bankNames = [
    {"id": "select", "name": "Select"},
    {"id": "AHB", "name": "Ahli Bank"},
    {"id": "BMCT", "name": "Bank Muscat"},
    {"id": "BDOH", "name": "Bank Dhofar"},
    {"id": "NBO", "name": "National Bank of Oman"},
    {"id": "OAB", "name": "Oman Arab Bank"},
  ];

  static List<Map<String, dynamic>> machineTypes = [
    {"id": "select", "name": "Select"},
    {"id": "001", "name": "EPP"},
    {"id": "002", "name": "Normal"},
  ];

  static List<Map<String, dynamic>> billDispatchTypes = [
    // {"id": "select", "name": "Select"},
    {"id": "0", "name": "Soft"},
    {"id": "1", "name": "Hard"},
    {"id": "2", "name": "Soft + Hard"},
  ];

  static List<String> crNumbers = ["111", "122", "101"];
}
