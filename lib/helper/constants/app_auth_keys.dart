class AppGeneralKeys {
  // add all api keys and authorities keys here
  static String APP_MODULE_ID = 'APP_MODULE_ID';
  static String APP_HOME_MENU_ID = 'HOME_MENU_ID';
  static String APP_DEALS_MENU_ID = 'DEALS_MENU_ID';
  static String APP_SETTINGS_MENU_ID = 'SETTINGS_MENU_ID';

  static String PLAYSTORE_APP_URL = 'PLAYSTORE_APP_URL';
  static String MAX_ALLOWED_APP_VERSION = 'MAX_ALLOWED_APP_VERSION';

  static String OTP_INTERVAL = 'OTP_INTERVAL';
  // static String SMART_VOUCHER_POS_KEY = 'SMART_VOUCHER_POS_KEY';

  // terms url
  static String TERMS_CONDITIONS_LINK = 'TERMS_CONDITIONS_LINK';

  // customer and account profile menu id
  static String APP_CUSTOMERPROFILE_MENU_ID = 'CUSTOMER_PROFILE_MENU';
  static String APP_ACCOUNTPROFILE_MENU_ID = 'ACCOUNT_PROFILE_MENU';

  static String APP_DEALER = 'APP_DEALER';
  static String APP_CSR = 'APP_CSR';
  static String APP_ADMIN = 'APP_ADMIN';

  static String DEALS_EN_LINK = 'DEALS_EN_LINK';

  static String DEALS_AR_LINK = 'DEALS_AR_LINK';

  static String PREPAID = 'PREPAID';
  static String POSTPAID = 'POSTPAID';

  static String FIXEDLINE = 'FIXEDLINE';
  static String HBB = 'HBB';
  static String IPTV = 'IPTV';
  static String WFBB = 'WFBB';

  static String PREPAID_ID = '14';
  static String POSTPAID_ID = '9';
  static String WFBB_ID = '41';

  static String OMAN = 'OMN';
}

class AppSettingKeys {
  // cdom auth
  static String BACKEND_CDOM = 'BACKEND_CDOM';

  // customer profile
  static String MRZ_SEARCH = 'MRZ_SEARCH';
  static String MANUAL_SEARCH = 'MANUAL_SEARCH';
  static String MANUAL_SEARCH_ENTERPRISE = 'MANUAL_SEARCH_ENTERPRISE';
  static String CONTACTNO_MANDARTORY = 'CONTACTNO_MANDARTORY';
  static String EDIT_CUSTOMER_INFO = 'EDIT_CUSTOMER_INFO';
  static String EMAIL_MANDARTORY = 'EMAIL_MANDARTORY';
  static String FULL_PROFILE_MANDATORY = 'FULL_PROFILE_MANDATORY';
  static String POBOX_MANDATORY = 'POBOX_MANDATORY';
  static String POSTALCODE_MANDATORY = 'POSTALCODE_MANDATORY';
  static String WILAYAT_MANDATORY = 'WILAYAT_MANDATORY';

  // account profile
  static String ENTERPRISE_ACCOUNT_CREATION = 'ENTERPRISE_ACCOUNT_CREATION';
  static String ENTERPRISE_ACCOUNT_UPDATION = 'ENTERPRISE_ACCOUNT_UPDATION';
  static String STAFF_ACCOUNT_CREATION = 'STAFF_ACCOUNT_CREATION';

  // document
  static String SKIP_DOCUMENTS = 'skipDocuments';
  static String DOCUMENTS_UTT_TICKET = 'documentByTicket';

  static String PLAN_DOWNGRADE = 'planDowngrade';
  static String DEVICE_DOWNGRADE = 'deviceDowngrade';

  // mobile line count
  static String MAX_ALLOWED_MOBILE_COUNT = 'MAX_ALLOWED_MOBILE_COUNT';
  static String ALLOWED_MAKASIB_VOUCHERS = 'ALLOWED_MAKASIB_VOUCHERS';
  static String MRZ_GUIDELINES_URL = 'MRZ_GUIDELINES_URL';

  static String IMSI_PREPAID_PRIMARY = '15'; // 'PREPAID_PRIMARY_IMSI_ID';
  static String IMSI_POSTPAID_PRIMARY = '10'; // 'POSTPAID_PRIMARY_IMSI_ID';
  static String IMSI_WFBB_PRIMARY = '42'; // 'POSTPAID_PRIMARY_IMSI_ID';

  static String MSISDN_PREPAID_PRIMARY = '9';
  static String MSISDN_POSTPAID_PRIMARY = '9';

  static String STAFF_ACCOUNT_ID = '9';
}

class AppOrderFlowKeys {
  static String STARTER_KIT = 'STARTER_KIT';
  static String NEW_PREPAID = 'NEW_LINE_PREPAID'; //'NEW_LINE_PREPAID';
  static String SIM_SWAP = "SIM_SWAP";
  static String TERMINATION = "TERMINATION";
  static String RETENTION = "RETENTION";
  static String PLAN_CHANGE = "PLAN_CHANGE";
  static String TRANSFER = "TRANSFER";
  static String SERVICE_PORTABILITY = "SERVICE_PORTABILITY";
  static String NUMBER_PORT_IN = "MNP";
  static String NUMBER_SWAP = "NUMBER_SWAP";

// postpaid
  static String NEW_POSTPAID = 'NEW_LINE_POSTPAID';

  static String NBO = "NBO";
}

class AppStepperAuthKeys {
  // order types
  static String APP_ORDERTYPES = 'APP_ORDERTYPES';
  // service types
  static String APP_SERVICETYPES = 'APP_SERVICETYPES';
  static String USER_AUTHORITIES = 'USER_AUTHORITIES';

  static String STARTER_KIT = 'STARTER_KIT';
  static String NEW_PREPAID = 'NEW_LINE_PREPAID'; //'NEW_LINE_PREPAID';
  static String SIM_SWAP = "SIM_SWAP";
  static String TERMINATION = "TERMINATION";
  static String RETENTION = "RETENTION";
  static String PLAN_CHANGE = "PLAN_CHANGE";
  static String TRANSFER = "TRANSFER";
  static String SERVICE_PORTABILITY = "SERVICE_PORTABILITY";
  static String NUMBER_PORT_IN = "MNP";
  static String NUMBER_SWAP = "NUMBER_SWAP";
  static String SMART_VOUCHER = "SMART_VOUCHER";
  static String SMART_VOUCHER_VENDOR = "SMART_VOUCHER_VENDOR";

// postpaid
  static String NEW_POSTPAID = 'NEW_LINE_POSTPAID';

  // static String NEW_POSTPAID = 'NEW_POSTPAID';

  static String STEP_CONFIRMATION = 'STEP_CONFIRMATION';

  static String STEP_CUSTOMERPROFILE = 'STEP_CUSTOMERPROFILE';

  static String STEP_ACCOUNTPROFILE = 'STEP_ACCOUNTPROFILE';

  static String STEP_DOCUMENTS = 'STEP_DOCUMENTS';

  static String STEP_NUMBERANDSIM = 'STEP_NUMBERANDSIM';

  static String STEP_INVENTORY = 'STEP_INVENTORY';

  static String STEP_PAYMENT = 'STEP_PAYMENT';

  static String STEP_PLAN = 'STEP_PLAN';

  static String NBO_OFFER_SELECTION = "NBO";

  static String ENABLE_ESIM = "ENABLE_ESIM";
  static String BARCODE_SCAN_ONLY = "BARCODE_SCAN_ONLY";

  // id type
  static String ID101 = '101';
  static String ID102 = '102';
  static String ID103 = '103';
  static String ID104 = '104';
  static String ID105 = '105';
}

class FlowHelperKeys {
  // all below [keys] to carry throughout flow
  // this will be handling flow and full list of validated groups with modified
  // plans (plan model) flags [add/removed/show] => after processed plans
  // => on to show ui and handle addons

  static String PROCESSED_PLAN_LIST = 'processed_plan_list';

  // => after [getPlanInventoryStock] api and validating inventory data
  static String PlanInventoryStock_POS_LIST = 'plan_inventory_stock_POS_LIST';
  static String PlanInventoryStock_PLANS_CASHSALE = 'inventory_plans_cashsale';

  static String DOCUMENT_TYPE_LIST = 'document_type_list';
// track document upload
  static String DOC_UPLOADED = 'doc_uploaded';
  static String SKIP_DOCS = 'skip_docs';

  // fields to carry throughout flow
  static String SERVICE_MODEL = 'service_model';
  // fields to carry throughout flow
  static String SERVICE_SELECTION = 'service_selection';
  static String SUBSCRIBER_DETAILS = 'subscriber_details';
  // to check the vanity
  static String NUMBER_DETAILS = 'number_details';
  static String NUMBER_STATUS = 'number_status';

  // no inventory to check by pass inventory screen [bool]
  static String NO_INVENTORY = 'no_inventory';
  static String ACCOUNT_TYPE = 'account_type';
  static String SUB_ACCOUNT_TYPE = 'sub_account_type';
  // makasib voucher list
  static String MAKASIB_V_LIST = 'MVList';
  // makasib voucher total amount
  static String MAKASIB_AMOUNT = 'makasib_amount';
  // total - makasib = amount
  static String PAID_AMOUNT = 'paid_amount';

  static String CRNUMBER = 'cr_number';
  static String SMART_VOUCHER_DETAILS = 'smart_voucher_details';
}

class OrderModelKeys {
  // objects to filled for api call
  static String CUSTOMER = 'customer';
  static String ACCOUNT = 'account';
  // static String SUBS_ACCOUNT = 'SUBS_ACCOUNT';
  static String CUSTOMER_RECIPIENT = 'customer_recipient';
  static String ACCOUNT_RECIPIENT = 'account_recipient';
  // number and sim model [and number details]
  static String SIM_NUMBER = 'sim_number';
  static String NS_PRODUCT_DETAILS = 'sim_number_PRODUCT_details';
  static String SECOND_SIM_NUMBER = 'second_sim_number';
  static String DATA_SIM_NUMBER = 'data_sim_number';
  static String BIDDING_NUMBER = 'bidding_number';
  static String ESIM = 'esim';
  static String DONOR_DETAILS_LOV = 'donor_details';
  static String DONOR_SERVICE_TYPE_LOV = 'donor_service_type';

  // this will be after validation and applied business rule for eligible plans
  // passed to validate plan api and create order api
  static String SELECTED_PLANS = 'selected_plans';
  static String SELECTED_PLANS_INVENTORY = 'selected_plans_inventory';

  static String ID_TYPE_LOV = 'id_type_lov';
  static String ID_TYPE_LOV_RECIPIENT = 'id_type_lov_recipient';
  static String DOC_TRACK_ID = 'doc_track_id';
  static String SEARCH_TYPE = 'search_type'; // mrz  manual
  static String SEARCH_TYPE_RECIPIENT = 'search_type_recipient'; // mrz  manual

  static String PAYMENT_POS_RESPONSE = 'payment_pos_response';
  static String PAYMENT_POS_SALES_REQUEST = 'payment_pos_sales_request';
  // removed list
  // static String PAYMENT_POS_RESPONSE_REMOVED = 'payment_pos_response_removed';

  static String TOTAL_DUES = 'total_dues';
  static String PENALTY = 'total_penalty';

  static String PAYMENT_CMA_RESPONSE = 'payment_cma_response';
  static String PAYMENT_CMA_SALES_REQUEST = 'payment_cma_sales_request';

  static String DOCUMENT_SIGN = 'document_sign';
  static String DOCUMENT_SIGN_REC = 'document_sign_rec';
  static String TERMINATION_REASON = 'termination_reason';
  static String SERVICE_PORTABILITY_REASON = 'service_portability_reason';
  static String RETENTION_REASON = 'retention_reason';

  static String NBO_OFFER_SELECTED = 'nbo_offer_selected';
}
