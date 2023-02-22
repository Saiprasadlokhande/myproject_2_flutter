import 'package:myproject_2_client/myproject_2_client.dart';

class SearchAddressModel {
  String? title;
  int? id;
  SearchAddressModel({this.title, this.id});

  factory SearchAddressModel.fromCountry(Country country) {
    return SearchAddressModel(title: country.country, id: country.id!);
  }

  List<SearchAddressModel> getCountryList(List<Country> countryList) {
    List<SearchAddressModel> list = [];
    for (int i = 0; i < countryList.length; i++) {
      list.add(SearchAddressModel.fromCountry(countryList[i]));
    }
    return list;
  }

  factory SearchAddressModel.fromState(States state) {
    return SearchAddressModel(title: state.state, id: state.id!);
  }

  List<SearchAddressModel> getStateList(List<States> stateList) {
    List<SearchAddressModel> list = [];
    for (int i = 0; i < stateList.length; i++) {
      list.add(SearchAddressModel.fromState(stateList[i]));
    }
    return list;
  }

  factory SearchAddressModel.fromDistrict(District district) {
    return SearchAddressModel(title: district.district, id: district.id!);
  }

  List<SearchAddressModel> getDistrictList(List<District> districtList) {
    List<SearchAddressModel> list = [];
    for (int i = 0; i < districtList.length; i++) {
      list.add(SearchAddressModel.fromDistrict(districtList[i]));
    }
    return list;
  }

  factory SearchAddressModel.fromCity(City city) {
    return SearchAddressModel(title: city.city, id: city.id!);
  }

  List<SearchAddressModel> getCityList(List<City> cityList) {
    List<SearchAddressModel> list = [];
    for (int i = 0; i < cityList.length; i++) {
      list.add(SearchAddressModel.fromCity(cityList[i]));
    }
    return list;
  }

  factory SearchAddressModel.fromArea(Area area) {
    return SearchAddressModel(title: area.area, id: area.id!);
  }

  List<SearchAddressModel> getAreaList(List<Area> areaList) {
    List<SearchAddressModel> list = [];
    for (int i = 0; i < areaList.length; i++) {
      list.add(SearchAddressModel.fromArea(areaList[i]));
    }
    return list;
  }
}
