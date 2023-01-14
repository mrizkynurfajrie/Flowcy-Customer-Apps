import 'package:get_storage/get_storage.dart';

const String CACHE_USERNAME = "username";
const String CACHE_TOKEN = "token";
const String CHECK_LOGIN = "loginState";
const String CACHE_RIDER = "rider";
const String STATUS_ACTIVE_PAYMENT = "status_active_payment";
const String STATUS_ACTIVE_POST = "status_active_post";
const String CACHE_ACTIVE_POST = "active_post";
const String CACHE_VEHICLE = "vehicle";
const String CACHE_POSTING = "posting";
const String CACHE_USER = "user";
const String CACHE_API_LOGGER = "api_logger";
const String CACHE_AGREEMENT = "agreement";
const String CACHE_BALANCE = "balance";
const String CACHE_PAYMENT_RIDER = "payment_rider";
const String CACHE_PAYMENT_BANK = "payment_bank";
const String CACHE_PAYMENT_GUIDE = "payment_guide";
const String CACHE_PAYMENT_CATEGORIES = "payment_categories";
const String CACHE_LATEST_BANK = "latest_bank";
const String CACHE_BANK_ACTIVE = "active_bank";
const String NITIP_STATUS_ACTIVE_POST = "nitip_status_active_post";
const String CACHE_NITIP_ACTIVE_POST = "nitip_active_post";
const String CACHE_NITIP_POSTING = "nitip_posting";
const String CACHE_NITIP_ORDER = "nitip_order";
const String CACHE_REF_STATUS = "ref_status";
const String CACHE_MANDIRI_VA = "mandiri_va";
const String CACHE_TRAVEL_TRANSACTION = "travel_trx";
const String CACHE_TRAVEL_ORDER_LISTBYTRAVELTRANSACTION = "travelOrderListByTravelTrx";
const String CACHE_GLOBAL_ACTIVITY = "global_activity";
const String CACHE_TRANSACTION_TRAVEL = "transaction_travel";

class Api2 {
  final box = GetStorage();

  Future setUsername({String? username}) async {
    username ??= "";
    await box.write(CACHE_USERNAME, username);
  }

  Future<String?> getUsername() async {
    return box.read(CACHE_USERNAME);
  }

  Future setRider({dynamic rider}) async {
    rider ??= "";
    await box.write(CACHE_RIDER, rider);
  }

  Future<dynamic> getRider() async {
    return box.read(CACHE_RIDER);
  }

  Future setBalance({dynamic balance}) async {
    balance ??= "";
    await box.write(CACHE_BALANCE, balance);
  }

  Future<dynamic> getBalance() async {
    return box.read(CACHE_BALANCE);
  }
  Future setMandiri({dynamic mandiri}) async {
    mandiri ??= "";
    await box.write(CACHE_MANDIRI_VA, mandiri);
  }

  Future<dynamic> getMandiri() async {
    return box.read(CACHE_MANDIRI_VA);
  }

  Future<dynamic> getPaymentRider() async {
    return box.read(CACHE_PAYMENT_RIDER);
  }

  Future<dynamic> getPaymentBank() async {
    return box.read(CACHE_PAYMENT_BANK);
  }

  Future<dynamic> getPaymentGuide() async {
    return box.read(CACHE_PAYMENT_GUIDE);
  }

  Future<dynamic> getPaymentCategories() async {
    return box.read(CACHE_PAYMENT_CATEGORIES);
  }

  Future<dynamic> getLatestBank() async {
    return box.read(CACHE_LATEST_BANK);
  }

  Future<dynamic> getBankActive() async {
    return box.read(CACHE_BANK_ACTIVE);
  }

  Future setUser({dynamic user}) async {
    user ??= "";
    await box.write(CACHE_USER, user);
  }

  Future<dynamic> getUser() async {
    return box.read(CACHE_USER);
  }

  Future<dynamic> setVehicle({dynamic vehicle}) async {
    vehicle ??= "";
    await box.write(CACHE_VEHICLE, vehicle);
  }

  Future<dynamic> getVehicle() async {
    return box.read(CACHE_VEHICLE);
  }

  Future<dynamic> setAgreement({dynamic agreement}) async {
    agreement ??= "";
    await box.write(CACHE_AGREEMENT, agreement);
  }

  Future<dynamic> getAgreement() async {
    return box.read(CACHE_AGREEMENT);
  }

  Future<dynamic> setPosting({dynamic posting}) async {
    posting ??= "";
    await box.write(CACHE_POSTING, posting);
  }

  Future<dynamic> getPosting() async {
    return box.read(CACHE_POSTING);
  }

  Future<dynamic> setTravelTransaction({dynamic travel}) async {
    travel ??= "";
    await box.write(CACHE_TRANSACTION_TRAVEL, travel);
  }

  Future<dynamic> getTravelTransaction() async {
    return box.read(CACHE_TRANSACTION_TRAVEL);
  }

  Future<dynamic> setPostingNitip({dynamic posting}) async {
    posting ??= "";
    await box.write(CACHE_NITIP_POSTING, posting);
  }
  Future<dynamic> setNitipOrder({dynamic order}) async {
    order ??= "";
    await box.write(CACHE_NITIP_ORDER, order);
  }

  Future<dynamic> setTravelTrx({dynamic trx}) async {
    trx ??= "";
    await box.write(CACHE_TRAVEL_TRANSACTION, trx);
  }
  Future<dynamic> setTravelOrderListByTravelTrxData({dynamic travelOrder}) async {
    travelOrder ??= "";
    await box.write(CACHE_TRAVEL_ORDER_LISTBYTRAVELTRANSACTION, travelOrder);
  }

    Future<dynamic> setGlobalActivity({dynamic globalActivity}) async {
    globalActivity ??= "";
    await box.write(CACHE_GLOBAL_ACTIVITY, globalActivity);
  }

  Future<dynamic> setRefStatus({dynamic refStat}) async {
    refStat ??= "";
    await box.write(CACHE_REF_STATUS, refStat);
  }

  Future<dynamic> getPostingNitip() async {
    return box.read(CACHE_NITIP_POSTING);
  }

  Future<dynamic> getRefStatus() async {
    return box.read(CACHE_REF_STATUS);
  }
  Future<dynamic> getNitipOrder() async {
    return box.read(CACHE_NITIP_ORDER);
  }

  Future<dynamic> getTravelTrx() async {
    return box.read(CACHE_TRAVEL_TRANSACTION);
  }
  Future<dynamic> getTravelOrderListByTravelTrx() async {
    return box.read(CACHE_TRAVEL_ORDER_LISTBYTRAVELTRANSACTION);
  }
  Future<dynamic> getGlobalActivity() async {
    return box.read(CACHE_GLOBAL_ACTIVITY);
  }

  Future setToken({String? token}) async {
    token ??= "";
    await box.write(CACHE_TOKEN, token);
  }

  Future<String?> getToken() async {
    return box.read(CACHE_TOKEN);
  }

  Future setIsLogin({bool? isLogin}) async {
    isLogin ??= false;
    await box.write(CHECK_LOGIN, isLogin);
  }

  Future<bool?> getLoginStatus() async {
    return box.read(CHECK_LOGIN);
  }

  Future removeData() async {
    await box.remove(CHECK_LOGIN);
    await box.remove(CACHE_USERNAME);
    await box.remove(CACHE_TOKEN);
    await box.remove(CACHE_RIDER);
    await box.remove(CACHE_VEHICLE);
    await box.remove(CACHE_POSTING);
    await box.remove(CACHE_ACTIVE_POST);
    await box.remove(CACHE_USER);
    await box.remove(STATUS_ACTIVE_POST);
  }

  Future removeRider() async {
    await box.remove(CACHE_RIDER);
  }

  Future removeAllPosting() async {
    await box.remove(CACHE_POSTING);
    await box.remove(CACHE_ACTIVE_POST);
    await box.remove(CACHE_NITIP_POSTING);
    await box.remove(CACHE_NITIP_ACTIVE_POST);
  }

  Future removeBankActive() async {
    await box.remove(CACHE_BANK_ACTIVE);
  }

  Future removePaymentCategories() async {
    await box.remove(CACHE_PAYMENT_CATEGORIES);
  }

  Future removeLatestBank() async {
    await box.remove(CACHE_LATEST_BANK);
  }

  Future removePaymentRider() async {
    await box.remove(CACHE_PAYMENT_RIDER);
  }

  Future removePaymentBank() async {
    await box.remove(CACHE_PAYMENT_BANK);
  }

  Future removePosting() async {
    await box.remove(CACHE_POSTING);
  }

  Future removePostingNitip() async {
    await box.remove(CACHE_NITIP_POSTING);
  }

  Future removePayment() async {
    await box.remove(STATUS_ACTIVE_PAYMENT);
  }

  Future setHasActivePost({bool? isHasActivePost}) async {
    isHasActivePost ??= false;
    await box.write(STATUS_ACTIVE_POST, isHasActivePost);
  }
  Future setHasActivePayment({bool? isHasActivePayment}) async {
    isHasActivePayment ??= false;
    await box.write(STATUS_ACTIVE_PAYMENT, isHasActivePayment);
  }

  Future<bool?> getHasActivePost() async {
    return box.read(STATUS_ACTIVE_POST);
  }
  Future<bool?> getHasActivePayment() async {
    return box.read(STATUS_ACTIVE_PAYMENT);
  }

  Future setActivePost({dynamic activePost}) async {
    activePost ??= "";
    await box.write(CACHE_ACTIVE_POST, activePost);
  }

  Future setHasActivePostNitip({bool? isHasActivePostNitip}) async {
    isHasActivePostNitip ??= false;
    await box.write(NITIP_STATUS_ACTIVE_POST, isHasActivePostNitip);
  }

  Future<bool?> getHasActivePostNitip() async {
    return box.read(NITIP_STATUS_ACTIVE_POST);
  }

  Future setActivePostNitip({dynamic activePostNitip}) async {
    activePostNitip ??= "";
    await box.write(NITIP_STATUS_ACTIVE_POST, activePostNitip);
  }

  Future<dynamic> getActivePost() async {
    return box.read(CACHE_ACTIVE_POST);
  }

  Future removeActivePost() async {
    await box.remove(CACHE_ACTIVE_POST);
  }

  Future<dynamic> getActivePostNitip() async {
    return box.read(CACHE_NITIP_ACTIVE_POST);
  }

  Future removeActivePostNitip() async {
    await box.remove(CACHE_NITIP_ACTIVE_POST);
  }

  Future setApiLogger({dynamic value}) async {
    value ??= "";
    await box.write(CACHE_API_LOGGER, value);
  }

  Future<dynamic> getApiLogger() async {
    return box.read(CACHE_API_LOGGER);
  }
}
