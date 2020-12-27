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
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome \nThe Tambo`
  String get welcomeTambo {
    return Intl.message(
      'Welcome \nThe Tambo',
      name: 'welcomeTambo',
      desc: '',
      args: [],
    );
  }

  /// `Kirk The Tambo`
  String get nameKirk {
    return Intl.message(
      'Kirk The Tambo',
      name: 'nameKirk',
      desc: '',
      args: [],
    );
  }

  /// `$Free/All day`
  String get priceKirk {
    return Intl.message(
      '\$Free/All day',
      name: 'priceKirk',
      desc: '',
      args: [],
    );
  }

  /// `Center, Tambo`
  String get locationKirk {
    return Intl.message(
      'Center, Tambo',
      name: 'locationKirk',
      desc: '',
      args: [],
    );
  }

  /// `According to the existing baptismal books to date, the parish was already founded before the first Baptism inscription, which dates from January 17, 1836, but thanks to historical references from Father Manuel J. Guambaña it can be known that before the 5th of July 1835 was already founded as a suffragan of Jatuncañar. \n\nAs a fact of great importance within the parish life was the erection of the cave dedicated to Jesús del Gran Poder, located in the northern part of the Canton`
  String get detailsKirk {
    return Intl.message(
      'According to the existing baptismal books to date, the parish was already founded before the first Baptism inscription, which dates from January 17, 1836, but thanks to historical references from Father Manuel J. Guambaña it can be known that before the 5th of July 1835 was already founded as a suffragan of Jatuncañar. \n\nAs a fact of great importance within the parish life was the erection of the cave dedicated to Jesús del Gran Poder, located in the northern part of the Canton',
      name: 'detailsKirk',
      desc: '',
      args: [],
    );
  }

  /// `Nope`
  String get urlKirk {
    return Intl.message(
      'Nope',
      name: 'urlKirk',
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
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}