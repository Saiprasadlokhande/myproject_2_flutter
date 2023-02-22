import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myproject_2_client/myproject_2_client.dart';
import 'package:myproject_2_flutter/import_helper.dart';
import 'package:myproject_2_flutter/widgets/model/bottom_sheet_search_address_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'address_pod.g.dart';

@riverpod
Future<List<Country>> getCountryList(GetCountryListRef ref,
    {String text = ""}) async {
  return ref.watch(addressPod).getCountry(text: text);
}

@riverpod
Future<List<States>> getStateList(GetStateListRef ref, int countryId,
    {String text = ""}) async {
  return await ref.watch(addressPod).getState(countryId: countryId, text: text);
}

@riverpod
Future<List<District>> getDistrictList(GetDistrictListRef ref, int stateId,
    {String text = ""}) async {
  return ref.watch(addressPod).getDistrict(stateId: stateId, text: text);
}

@riverpod
Future<List<City>> getCityList(GetCityListRef ref, int districtId,
    {String text = ""}) async {
  return ref.watch(addressPod).getCity(district: districtId, text: text);
}

@riverpod
Future<List<Area>> getAreaList(GetAreaListRef ref, int cityId,
    {String text = ""}) async {
  return ref.watch(addressPod).getArea(cityId: cityId, text: text);
}

@riverpod
Future<List<Address>> getAddressList(GetAddressListRef ref,
    {String text = ""}) async {
  return await ref.watch(addressPod).getAddress(text: text);
}

var addressPod = ChangeNotifierProvider((ref) => AddressPod(ref));

class AddressPod extends ChangeNotifier {
  Ref ref;
  AddressPod(this.ref);
  Country? country;
  States? state;
  District? district;
  City? city;
  Area? area;
  TextEditingController countryCtrl = TextEditingController();
  TextEditingController stateCtrl = TextEditingController();
  TextEditingController districtCtrl = TextEditingController();
  TextEditingController cityCtrl = TextEditingController();
  TextEditingController areaCtrl = TextEditingController();
  SearchAddressModel searchAddressModel = SearchAddressModel();
  List<SearchAddressModel> searchAddressList = [];
  List<Country> countryList = [];
  List<States> stateList = [];
  List<District> districtList = [];
  List<City> cityList = [];
  List<Area> areaList = [];
  List<Address> addressList = [];
  TextEditingController searchCtrl = TextEditingController();

///////////////////////////////--------------------------------------------/////////////////////////////////////////////

  getAddressEntity({required SearchAddressType type, String text = ""}) async {
    switch (type) {
      case SearchAddressType.country:
        searchAddressList =
            searchAddressModel.getCountryList(await getCountry(text: text));
        break;
      case SearchAddressType.state:
        // TODO: Handle this case.
        searchAddressList = searchAddressModel.getStateList(await getState(
          countryId: country!.id!,
          text: text,
        ));
        break;
      case SearchAddressType.district:
        // TODO: Handle this case.
        searchAddressList =
            searchAddressModel.getDistrictList(await getDistrict(
          stateId: state!.id!,
          text: text,
        ));
        break;
      case SearchAddressType.city:
        // TODO: Handle this case.
        searchAddressList = searchAddressModel.getCityList(await getCity(
          district: district!.id!,
          text: text,
        ));
        break;
      case SearchAddressType.area:
        // TODO: Handle this case.
        searchAddressList = searchAddressModel.getAreaList(await getArea(
          cityId: city!.id!,
          text: text,
        ));
        break;
      case SearchAddressType.municipalCorporation:
        // TODO: Handle this case.
        break;
      case SearchAddressType.ward:
        // TODO: Handle this case.
        break;
      case SearchAddressType.pinCode:
        // TODO: Handle this case.
        break;
    }

    notifyListeners();
  }

///////////////////////////////--------------------------------------------/////////////////////////////////////////////

  Future<List<Country>> getCountry({String text = ""}) async {
    countryList =
        await client.country.getCountry(keyword: text.toUpperCase().trim());
    searchAddressList = searchAddressModel.getCountryList(countryList);
    return countryList;
  }

  Future<List<States>> getState(
      {required int countryId, String text = ""}) async {
    stateList = await client.state.getState(countryId, keyword: text);
    return stateList;
  }

  Future<List<District>> getDistrict(
      {required int stateId, String text = ""}) async {
    districtList = await client.district.getDistrict(stateId, keyword: text);
    return districtList;
  }

  Future<List<City>> getCity({required int district, String text = ""}) async {
    cityList = await client.city.getAllCity(
      district,
      keyword: text,
    );
    return cityList;
  }

  Future<List<Area>> getArea({required int cityId, String text = ""}) async {
    areaList = await client.area.getArea(cityId, keyword: text);
    return areaList;
  }

  Future<List<Address>> getAddress({String text = ""}) async {
    addressList = await client.address.getAddress(text: text);
    return addressList;
  }

///////////////////////////////--------------------------------------------/////////////////////////////////////////////

  addAddressEntity(
      {required SearchAddressType type, required String text}) async {
    bool val = false;
    switch (type) {
      case SearchAddressType.country:
        val = await addCountry(country: Country(country: text));
        break;
      case SearchAddressType.state:
// TODO: Handle this case.
        await addState(state: States(state: text, countryId: country!.id!));
        break;
      case SearchAddressType.district:
// TODO: Handle this case.
        val = await addDistrict(
            district: District(district: text, stateId: state!.id!));
        break;
      case SearchAddressType.city:
// TODO: Handle this case.
        val = await addCity(city: City(city: text, districtId: district!.id!));
        break;
      case SearchAddressType.area:
// TODO: Handle this case.
        val = await addArea(area: Area(area: text, cityId: city!.id!));
        break;
      case SearchAddressType.municipalCorporation:
// TODO: Handle this case.
        break;
      case SearchAddressType.ward:
// TODO: Handle this case.
        break;
      case SearchAddressType.pinCode:
// TODO: Handle this case.
        break;
    }

    return val;
  }

  Future<bool> addArea({required Area area}) async {
    bool val = await client.area.addArea(area);
    return val;
  }

  Future<bool> addCity({required City city}) async {
    bool val = await client.city.addCity(city);
    return val;
  }

  Future<bool> addDistrict({required District district}) async {
    bool val = await client.district.addDistrict(district);
    return val;
  }

  Future<bool> addState({required States state}) async {
    bool val = await client.state.addState(state);
    return val;
  }

  Future<bool> addCountry({required Country country}) async {
    bool val = await client.country.addCountry(country);
    return val;
  }

  Future<bool> addAddress({required Address address}) async {
    bool val = await client.address.addAddress(address);
    return val;
  }
///////////////////////////////--------------------------------------------/////////////////////////////////////////////

}
