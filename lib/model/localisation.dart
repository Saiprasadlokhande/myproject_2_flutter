class Localisation {
  String? title;
  En? en;

  Localisation({
    this.title,
    this.en,
  });

  Localisation.fromJson(Map<String, dynamic> json) {
    title = json['title'] as String?;
    en = (json['en'] as Map<String, dynamic>?) != null
        ? En.fromJson(json['en'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['title'] = title;
    json['en'] = en?.toJson();
    return json;
  }
}

class En {
  SplashScreen? splashScreen;
  Common? common;
  Home? home;
  MySociety? mySociety;
  Room? room;
  Maintainance? maintainance;
  ErrorMsg? errorMsg;
  IOT? iOT;
  Dialogs? dialogs;

  En({
    this.splashScreen,
    this.common,
    this.home,
    this.mySociety,
    this.room,
    this.maintainance,
    this.errorMsg,
    this.iOT,
    this.dialogs,
  });

  En.fromJson(Map<String, dynamic> json) {
    splashScreen = (json['splashScreen'] as Map<String, dynamic>?) != null
        ? SplashScreen.fromJson(json['splashScreen'] as Map<String, dynamic>)
        : null;
    common = (json['common'] as Map<String, dynamic>?) != null
        ? Common.fromJson(json['common'] as Map<String, dynamic>)
        : null;
    home = (json['home'] as Map<String, dynamic>?) != null
        ? Home.fromJson(json['home'] as Map<String, dynamic>)
        : null;
    mySociety = (json['mySociety'] as Map<String, dynamic>?) != null
        ? MySociety.fromJson(json['mySociety'] as Map<String, dynamic>)
        : null;
    room = (json['room'] as Map<String, dynamic>?) != null
        ? Room.fromJson(json['room'] as Map<String, dynamic>)
        : null;
    maintainance = (json['maintainance'] as Map<String, dynamic>?) != null
        ? Maintainance.fromJson(json['maintainance'] as Map<String, dynamic>)
        : null;
    errorMsg = (json['errorMsg'] as Map<String, dynamic>?) != null
        ? ErrorMsg.fromJson(json['errorMsg'] as Map<String, dynamic>)
        : null;
    iOT = (json['iOT'] as Map<String, dynamic>?) != null
        ? IOT.fromJson(json['iOT'] as Map<String, dynamic>)
        : null;
    dialogs = (json['dialogs'] as Map<String, dynamic>?) != null
        ? Dialogs.fromJson(json['dialogs'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['splashScreen'] = splashScreen?.toJson();
    json['common'] = common?.toJson();
    json['home'] = home?.toJson();
    json['mySociety'] = mySociety?.toJson();
    json['room'] = room?.toJson();
    json['maintainance'] = maintainance?.toJson();
    json['errorMsg'] = errorMsg?.toJson();
    json['iOT'] = iOT?.toJson();
    json['dialogs'] = dialogs?.toJson();
    return json;
  }
}

class SplashScreen {
  String? title;

  SplashScreen({
    this.title,
  });

  SplashScreen.fromJson(Map<String, dynamic> json) {
    title = json['title'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['title'] = title;
    return json;
  }
}

class Common {
  String? owner;
  String? rental;
  String? resident;
  String? yes;
  String? no;
  String? confirm;
  String? cancel;
  String? reset;
  String? success;
  String? failed;
  String? noInternet;

  Common({
    this.owner,
    this.rental,
    this.resident,
    this.yes,
    this.no,
    this.confirm,
    this.cancel,
    this.reset,
    this.success,
    this.failed,
    this.noInternet,
  });

  Common.fromJson(Map<String, dynamic> json) {
    owner = json['owner'] as String?;
    rental = json['rental'] as String?;
    resident = json['resident'] as String?;
    yes = json['yes'] as String?;
    no = json['no'] as String?;
    confirm = json['confirm'] as String?;
    cancel = json['cancel'] as String?;
    reset = json['reset'] as String?;
    success = json['success'] as String?;
    failed = json['failed'] as String?;
    noInternet = json['noInternet'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['owner'] = owner;
    json['rental'] = rental;
    json['resident'] = resident;
    json['yes'] = yes;
    json['no'] = no;
    json['confirm'] = confirm;
    json['cancel'] = cancel;
    json['reset'] = reset;
    json['success'] = success;
    json['failed'] = failed;
    json['noInternet'] = noInternet;
    return json;
  }
}

class Home {
  String? myHome;
  String? maintenance;
  String? events;
  String? myDevices;

  Home({
    this.myHome,
    this.maintenance,
    this.events,
    this.myDevices,
  });

  Home.fromJson(Map<String, dynamic> json) {
    myHome = json['myHome'] as String?;
    maintenance = json['maintenance'] as String?;
    events = json['events'] as String?;
    myDevices = json['myDevices'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['myHome'] = myHome;
    json['maintenance'] = maintenance;
    json['events'] = events;
    json['myDevices'] = myDevices;
    return json;
  }
}

class MySociety {
  String? societyAddress;
  String? searchSociety;

  MySociety({
    this.societyAddress,
    this.searchSociety,
  });

  MySociety.fromJson(Map<String, dynamic> json) {
    societyAddress = json['societyAddress'] as String?;
    searchSociety = json['searchSociety'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['societyAddress'] = societyAddress;
    json['searchSociety'] = searchSociety;
    return json;
  }
}

class Room {
  String? selectRoom;
  String? myRoom;

  Room({
    this.selectRoom,
    this.myRoom,
  });

  Room.fromJson(Map<String, dynamic> json) {
    selectRoom = json['selectRoom'] as String?;
    myRoom = json['myRoom'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['selectRoom'] = selectRoom;
    json['myRoom'] = myRoom;
    return json;
  }
}

class Maintainance {
  String? roomNo;
  String? maintenance;
  String? vehicleCharge;
  String? penalty;
  String? finalAmount;
  String? paid;
  String? online;
  String? cash;

  Maintainance({
    this.roomNo,
    this.maintenance,
    this.vehicleCharge,
    this.penalty,
    this.finalAmount,
    this.paid,
    this.online,
    this.cash,
  });

  Maintainance.fromJson(Map<String, dynamic> json) {
    roomNo = json['roomNo'] as String?;
    maintenance = json['maintenance'] as String?;
    vehicleCharge = json['vehicleCharge'] as String?;
    penalty = json['penalty'] as String?;
    finalAmount = json['finalAmount'] as String?;
    paid = json['paid'] as String?;
    online = json['online'] as String?;
    cash = json['cash'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['roomNo'] = roomNo;
    json['maintenance'] = maintenance;
    json['vehicleCharge'] = vehicleCharge;
    json['penalty'] = penalty;
    json['finalAmount'] = finalAmount;
    json['paid'] = paid;
    json['online'] = online;
    json['cash'] = cash;
    return json;
  }
}

class ErrorMsg {
  String? noSocietyRegistered;

  ErrorMsg({
    this.noSocietyRegistered,
  });

  ErrorMsg.fromJson(Map<String, dynamic> json) {
    noSocietyRegistered = json['noSocietyRegistered'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['noSocietyRegistered'] = noSocietyRegistered;
    return json;
  }
}

class IOT {
  String? myDevices;
  String? wifiConnection;

  IOT({
    this.myDevices,
    this.wifiConnection,
  });

  IOT.fromJson(Map<String, dynamic> json) {
    myDevices = json['myDevices'] as String?;
    wifiConnection = json['wifiConnection'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['myDevices'] = myDevices;
    json['wifiConnection'] = wifiConnection;
    return json;
  }
}

class Dialogs {
  String? confirmRequest;
  String? makeMeOwner;
  String? yourRequestHasBeenSent;
  String? registerYourAccountWithThisRoom;
  String? requestSent;
  String? ownerWillAuthenticateYourRequest;

  Dialogs({
    this.confirmRequest,
    this.makeMeOwner,
    this.yourRequestHasBeenSent,
    this.registerYourAccountWithThisRoom,
    this.requestSent,
    this.ownerWillAuthenticateYourRequest,
  });

  Dialogs.fromJson(Map<String, dynamic> json) {
    confirmRequest = json['confirmRequest'] as String?;
    makeMeOwner = json['makeMeOwner'] as String?;
    yourRequestHasBeenSent = json['yourRequestHasBeenSent'] as String?;
    registerYourAccountWithThisRoom =
        json['registerYourAccountWithThisRoom'] as String?;
    requestSent = json['requestSent'] as String?;
    ownerWillAuthenticateYourRequest =
        json['ownerWillAuthenticateYourRequest'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['confirmRequest'] = confirmRequest;
    json['makeMeOwner'] = makeMeOwner;
    json['yourRequestHasBeenSent'] = yourRequestHasBeenSent;
    json['registerYourAccountWithThisRoom'] = registerYourAccountWithThisRoom;
    json['requestSent'] = requestSent;
    json['ownerWillAuthenticateYourRequest'] = ownerWillAuthenticateYourRequest;
    return json;
  }
}
