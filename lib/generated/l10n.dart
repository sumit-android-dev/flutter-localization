// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `App Title`
  String get appTitle {
    return Intl.message(
      'App Title',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Detail`
  String get detail {
    return Intl.message(
      'Detail',
      name: 'detail',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Payments`
  String get payments {
    return Intl.message(
      'Payments',
      name: 'payments',
      desc: '',
      args: [],
    );
  }

  /// `Property Tax`
  String get property_tax {
    return Intl.message(
      'Property Tax',
      name: 'property_tax',
      desc: '',
      args: [],
    );
  }

  /// `Water Charges`
  String get water_charges {
    return Intl.message(
      'Water Charges',
      name: 'water_charges',
      desc: '',
      args: [],
    );
  }

  /// `Shop/Lease Rent`
  String get shop_lease_rent {
    return Intl.message(
      'Shop/Lease Rent',
      name: 'shop_lease_rent',
      desc: '',
      args: [],
    );
  }

  /// `Payment History`
  String get payment_history {
    return Intl.message(
      'Payment History',
      name: 'payment_history',
      desc: '',
      args: [],
    );
  }

  /// `Request Certificates`
  String get request_certificates {
    return Intl.message(
      'Request Certificates',
      name: 'request_certificates',
      desc: '',
      args: [],
    );
  }

  /// `Marriage Certificate`
  String get marriage_certificate {
    return Intl.message(
      'Marriage Certificate',
      name: 'marriage_certificate',
      desc: '',
      args: [],
    );
  }

  /// `Birth Certificate`
  String get birth_certificate {
    return Intl.message(
      'Birth Certificate',
      name: 'birth_certificate',
      desc: '',
      args: [],
    );
  }

  /// `Death Certificate`
  String get death_certificate {
    return Intl.message(
      'Death Certificate',
      name: 'death_certificate',
      desc: '',
      args: [],
    );
  }

  /// `Fire Safety Certificate`
  String get fire_safety_certificate {
    return Intl.message(
      'Fire Safety Certificate',
      name: 'fire_safety_certificate',
      desc: '',
      args: [],
    );
  }

  /// `Avail New Services`
  String get avail_new_services {
    return Intl.message(
      'Avail New Services',
      name: 'avail_new_services',
      desc: '',
      args: [],
    );
  }

  /// `New Water Connection`
  String get new_water_connection {
    return Intl.message(
      'New Water Connection',
      name: 'new_water_connection',
      desc: '',
      args: [],
    );
  }

  /// `Sewerage Connection`
  String get sewerage_connection {
    return Intl.message(
      'Sewerage Connection',
      name: 'sewerage_connection',
      desc: '',
      args: [],
    );
  }

  /// `New Property Registration`
  String get new_property_registration {
    return Intl.message(
      'New Property Registration',
      name: 'new_property_registration',
      desc: '',
      args: [],
    );
  }

  /// `Property Mutation`
  String get property_mutation {
    return Intl.message(
      'Property Mutation',
      name: 'property_mutation',
      desc: '',
      args: [],
    );
  }

  /// `Service On Request`
  String get service_on_request {
    return Intl.message(
      'Service On Request',
      name: 'service_on_request',
      desc: '',
      args: [],
    );
  }

  /// `Water Tanker Service`
  String get water_tanker_service {
    return Intl.message(
      'Water Tanker Service',
      name: 'water_tanker_service',
      desc: '',
      args: [],
    );
  }

  /// `Septic Tank Cleaning`
  String get septic_tank_cleaning {
    return Intl.message(
      'Septic Tank Cleaning',
      name: 'septic_tank_cleaning',
      desc: '',
      args: [],
    );
  }

  /// `Ambulance Service`
  String get ambulance_service {
    return Intl.message(
      'Ambulance Service',
      name: 'ambulance_service',
      desc: '',
      args: [],
    );
  }

  /// `Funeral Van Service`
  String get funeral_van_service {
    return Intl.message(
      'Funeral Van Service',
      name: 'funeral_van_service',
      desc: '',
      args: [],
    );
  }

  /// `Litter/Debris Collection`
  String get litter_debris_collection {
    return Intl.message(
      'Litter/Debris Collection',
      name: 'litter_debris_collection',
      desc: '',
      args: [],
    );
  }

  /// `Debris Collection Charges`
  String get debris_collection_charges {
    return Intl.message(
      'Debris Collection Charges',
      name: 'debris_collection_charges',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Toilet Service`
  String get mobile_toilet_service {
    return Intl.message(
      'Mobile Toilet Service',
      name: 'mobile_toilet_service',
      desc: '',
      args: [],
    );
  }

  /// `Auditorium Booking`
  String get auditorium_booking {
    return Intl.message(
      'Auditorium Booking',
      name: 'auditorium_booking',
      desc: '',
      args: [],
    );
  }

  /// `Litter Collection Charges`
  String get litter_collection_charges {
    return Intl.message(
      'Litter Collection Charges',
      name: 'litter_collection_charges',
      desc: '',
      args: [],
    );
  }

  /// `Evidence Certificate`
  String get evidence_certificate {
    return Intl.message(
      'Evidence Certificate',
      name: 'evidence_certificate',
      desc: '',
      args: [],
    );
  }

  /// `Fire Extinguishing Service`
  String get fire_extinguishing_service {
    return Intl.message(
      'Fire Extinguishing Service',
      name: 'fire_extinguishing_service',
      desc: '',
      args: [],
    );
  }

  /// `Hoarding License`
  String get hoarding_license {
    return Intl.message(
      'Hoarding License',
      name: 'hoarding_license',
      desc: '',
      args: [],
    );
  }

  /// `Road Cutting Application`
  String get road_cutting_application {
    return Intl.message(
      'Road Cutting Application',
      name: 'road_cutting_application',
      desc: '',
      args: [],
    );
  }

  /// `Citizen Grievances`
  String get citizen_grievances {
    return Intl.message(
      'Citizen Grievances',
      name: 'citizen_grievances',
      desc: '',
      args: [],
    );
  }

  /// `Tree Cutting/Transit`
  String get tree_cutting_transit {
    return Intl.message(
      'Tree Cutting/Transit',
      name: 'tree_cutting_transit',
      desc: '',
      args: [],
    );
  }

  /// `Trade License New/Renew`
  String get trade_license_new_renew {
    return Intl.message(
      'Trade License New/Renew',
      name: 'trade_license_new_renew',
      desc: '',
      args: [],
    );
  }

  /// `New SWM ID`
  String get new_swm_id {
    return Intl.message(
      'New SWM ID',
      name: 'new_swm_id',
      desc: '',
      args: [],
    );
  }

  /// `Movie Shooting Permission`
  String get movie_shooting_permission {
    return Intl.message(
      'Movie Shooting Permission',
      name: 'movie_shooting_permission',
      desc: '',
      args: [],
    );
  }

  /// `Less`
  String get less {
    return Intl.message(
      'Less',
      name: 'less',
      desc: '',
      args: [],
    );
  }

  /// `Complaints`
  String get complaints {
    return Intl.message(
      'Complaints',
      name: 'complaints',
      desc: '',
      args: [],
    );
  }

  /// `Registration New Complaint`
  String get registration_new_complaint {
    return Intl.message(
      'Registration New Complaint',
      name: 'registration_new_complaint',
      desc: '',
      args: [],
    );
  }

  /// `Complaints Status`
  String get complaints_status {
    return Intl.message(
      'Complaints Status',
      name: 'complaints_status',
      desc: '',
      args: [],
    );
  }

  /// `Complaints History`
  String get complaints_history {
    return Intl.message(
      'Complaints History',
      name: 'complaints_history',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'hi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
