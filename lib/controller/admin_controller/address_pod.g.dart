// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_pod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$getCountryListHash() => r'59e73a2fabd4e5f208ddd6da0da8ea2e03734518';

/// See also [getCountryList].
class GetCountryListProvider extends AutoDisposeFutureProvider<List<Country>> {
  GetCountryListProvider({
    this.text = "",
  }) : super(
          (ref) => getCountryList(
            ref,
            text: text,
          ),
          from: getCountryListProvider,
          name: r'getCountryListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCountryListHash,
        );

  final String text;

  @override
  bool operator ==(Object other) {
    return other is GetCountryListProvider && other.text == text;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GetCountryListRef = AutoDisposeFutureProviderRef<List<Country>>;

/// See also [getCountryList].
final getCountryListProvider = GetCountryListFamily();

class GetCountryListFamily extends Family<AsyncValue<List<Country>>> {
  GetCountryListFamily();

  GetCountryListProvider call({
    String text = "",
  }) {
    return GetCountryListProvider(
      text: text,
    );
  }

  @override
  AutoDisposeFutureProvider<List<Country>> getProviderOverride(
    covariant GetCountryListProvider provider,
  ) {
    return call(
      text: provider.text,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'getCountryListProvider';
}

String _$getStateListHash() => r'f6999205383d65554b09cc15474dacf007232ca8';

/// See also [getStateList].
class GetStateListProvider extends AutoDisposeFutureProvider<List<States>> {
  GetStateListProvider(
    this.countryId, {
    this.text = "",
  }) : super(
          (ref) => getStateList(
            ref,
            countryId,
            text: text,
          ),
          from: getStateListProvider,
          name: r'getStateListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getStateListHash,
        );

  final int countryId;
  final String text;

  @override
  bool operator ==(Object other) {
    return other is GetStateListProvider &&
        other.countryId == countryId &&
        other.text == text;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, countryId.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GetStateListRef = AutoDisposeFutureProviderRef<List<States>>;

/// See also [getStateList].
final getStateListProvider = GetStateListFamily();

class GetStateListFamily extends Family<AsyncValue<List<States>>> {
  GetStateListFamily();

  GetStateListProvider call(
    int countryId, {
    String text = "",
  }) {
    return GetStateListProvider(
      countryId,
      text: text,
    );
  }

  @override
  AutoDisposeFutureProvider<List<States>> getProviderOverride(
    covariant GetStateListProvider provider,
  ) {
    return call(
      provider.countryId,
      text: provider.text,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'getStateListProvider';
}

String _$getDistrictListHash() => r'7dc0f9de3ea7b817e651029ab9b48022fddf221d';

/// See also [getDistrictList].
class GetDistrictListProvider
    extends AutoDisposeFutureProvider<List<District>> {
  GetDistrictListProvider(
    this.stateId, {
    this.text = "",
  }) : super(
          (ref) => getDistrictList(
            ref,
            stateId,
            text: text,
          ),
          from: getDistrictListProvider,
          name: r'getDistrictListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getDistrictListHash,
        );

  final int stateId;
  final String text;

  @override
  bool operator ==(Object other) {
    return other is GetDistrictListProvider &&
        other.stateId == stateId &&
        other.text == text;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, stateId.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GetDistrictListRef = AutoDisposeFutureProviderRef<List<District>>;

/// See also [getDistrictList].
final getDistrictListProvider = GetDistrictListFamily();

class GetDistrictListFamily extends Family<AsyncValue<List<District>>> {
  GetDistrictListFamily();

  GetDistrictListProvider call(
    int stateId, {
    String text = "",
  }) {
    return GetDistrictListProvider(
      stateId,
      text: text,
    );
  }

  @override
  AutoDisposeFutureProvider<List<District>> getProviderOverride(
    covariant GetDistrictListProvider provider,
  ) {
    return call(
      provider.stateId,
      text: provider.text,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'getDistrictListProvider';
}

String _$getCityListHash() => r'829feefc7a870ea0e7b7e385b8962caa63016b49';

/// See also [getCityList].
class GetCityListProvider extends AutoDisposeFutureProvider<List<City>> {
  GetCityListProvider(
    this.districtId, {
    this.text = "",
  }) : super(
          (ref) => getCityList(
            ref,
            districtId,
            text: text,
          ),
          from: getCityListProvider,
          name: r'getCityListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCityListHash,
        );

  final int districtId;
  final String text;

  @override
  bool operator ==(Object other) {
    return other is GetCityListProvider &&
        other.districtId == districtId &&
        other.text == text;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, districtId.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GetCityListRef = AutoDisposeFutureProviderRef<List<City>>;

/// See also [getCityList].
final getCityListProvider = GetCityListFamily();

class GetCityListFamily extends Family<AsyncValue<List<City>>> {
  GetCityListFamily();

  GetCityListProvider call(
    int districtId, {
    String text = "",
  }) {
    return GetCityListProvider(
      districtId,
      text: text,
    );
  }

  @override
  AutoDisposeFutureProvider<List<City>> getProviderOverride(
    covariant GetCityListProvider provider,
  ) {
    return call(
      provider.districtId,
      text: provider.text,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'getCityListProvider';
}

String _$getAreaListHash() => r'e8b7c0353e4562e7414d926989dd739dfe5b5e78';

/// See also [getAreaList].
class GetAreaListProvider extends AutoDisposeFutureProvider<List<Area>> {
  GetAreaListProvider(
    this.cityId, {
    this.text = "",
  }) : super(
          (ref) => getAreaList(
            ref,
            cityId,
            text: text,
          ),
          from: getAreaListProvider,
          name: r'getAreaListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAreaListHash,
        );

  final int cityId;
  final String text;

  @override
  bool operator ==(Object other) {
    return other is GetAreaListProvider &&
        other.cityId == cityId &&
        other.text == text;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cityId.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GetAreaListRef = AutoDisposeFutureProviderRef<List<Area>>;

/// See also [getAreaList].
final getAreaListProvider = GetAreaListFamily();

class GetAreaListFamily extends Family<AsyncValue<List<Area>>> {
  GetAreaListFamily();

  GetAreaListProvider call(
    int cityId, {
    String text = "",
  }) {
    return GetAreaListProvider(
      cityId,
      text: text,
    );
  }

  @override
  AutoDisposeFutureProvider<List<Area>> getProviderOverride(
    covariant GetAreaListProvider provider,
  ) {
    return call(
      provider.cityId,
      text: provider.text,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'getAreaListProvider';
}

String _$getAddressListHash() => r'94f5554b60455d2cec260fc51f56a7ae8b87610c';

/// See also [getAddressList].
class GetAddressListProvider extends AutoDisposeFutureProvider<List<Address>> {
  GetAddressListProvider({
    this.text = "",
  }) : super(
          (ref) => getAddressList(
            ref,
            text: text,
          ),
          from: getAddressListProvider,
          name: r'getAddressListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAddressListHash,
        );

  final String text;

  @override
  bool operator ==(Object other) {
    return other is GetAddressListProvider && other.text == text;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef GetAddressListRef = AutoDisposeFutureProviderRef<List<Address>>;

/// See also [getAddressList].
final getAddressListProvider = GetAddressListFamily();

class GetAddressListFamily extends Family<AsyncValue<List<Address>>> {
  GetAddressListFamily();

  GetAddressListProvider call({
    String text = "",
  }) {
    return GetAddressListProvider(
      text: text,
    );
  }

  @override
  AutoDisposeFutureProvider<List<Address>> getProviderOverride(
    covariant GetAddressListProvider provider,
  ) {
    return call(
      text: provider.text,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'getAddressListProvider';
}
