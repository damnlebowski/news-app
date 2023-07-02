import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';

List<PopupMenuEntry<String>> langList = const [
  PopupMenuItem<String>(
    value: 'Arabic',
    child: Text('Arabic'),
  ),
  PopupMenuItem<String>(
    value: 'Chinese',
    child: Text('Chinese'),
  ),
  PopupMenuItem<String>(
    value: 'Dutch',
    child: Text('Dutch'),
  ),
  PopupMenuItem<String>(
    value: 'English',
    child: Text('English'),
  ),
  PopupMenuItem<String>(
    value: 'French',
    child: Text('French'),
  ),
  PopupMenuItem<String>(
    value: 'German',
    child: Text('German'),
  ),
  PopupMenuItem<String>(
    value: 'Greek',
    child: Text('Greek'),
  ),
  PopupMenuItem<String>(
    value: 'Hebrew',
    child: Text('Hebrew'),
  ),
  PopupMenuItem<String>(
    value: 'Hindi',
    child: Text('Hindi'),
  ),
  PopupMenuItem<String>(
    value: 'Italian',
    child: Text('Italian'),
  ),
  PopupMenuItem<String>(
    value: 'Japanese',
    child: Text('Japanese'),
  ),
  PopupMenuItem<String>(
    value: 'Malayalam',
    child: Text('Malayalam'),
  ),
  PopupMenuItem<String>(
    value: 'Marathi',
    child: Text('Marathi'),
  ),
  PopupMenuItem<String>(
    value: 'Norwegian',
    child: Text('Norwegian'),
  ),
  PopupMenuItem<String>(
    value: 'Portuguese',
    child: Text('Portuguese'),
  ),
  PopupMenuItem<String>(
    value: 'Romanian',
    child: Text('Romanian'),
  ),
  PopupMenuItem<String>(
    value: 'Russian',
    child: Text('Russian'),
  ),
  PopupMenuItem<String>(
    value: 'Spanish',
    child: Text('Spanish'),
  ),
  PopupMenuItem<String>(
    value: 'Swedish',
    child: Text('Swedish'),
  ),
  PopupMenuItem<String>(
    value: 'Tamil',
    child: Text('Tamil'),
  ),
  PopupMenuItem<String>(
    value: 'Telugu',
    child: Text('Telugu'),
  ),
  PopupMenuItem<String>(
    value: 'Ukrainian',
    child: Text('Ukrainian'),
  ),
];

getLanguageCode(String language) {
  switch (language) {
    case 'Arabic':
      langCode = 'ar';
      break;
    case 'Chinese':
      langCode = 'zh';
      break;
    case 'Dutch':
      langCode = 'nl';
      break;
    case 'English':
      langCode = 'en';
      break;
    case 'French':
      langCode = 'fr';
      break;
    case 'German':
      langCode = 'de';
      break;
    case 'Greek':
      langCode = 'el';
      break;
    case 'Hebrew':
      langCode = 'he';
      break;
    case 'Hindi':
      langCode = 'hi';
      break;
    case 'Italian':
      langCode = 'it';
      break;
    case 'Japanese':
      langCode = 'ja';
      break;
    case 'Malayalam':
      langCode = 'ml';
      break;
    case 'Marathi':
      langCode = 'mr';
      break;
    case 'Norwegian':
      langCode = 'no';
      break;
    case 'Portuguese':
      langCode = 'pt';
      break;
    case 'Romanian':
      langCode = 'ro';
      break;
    case 'Russian':
      langCode = 'ru';
      break;
    case 'Spanish':
      langCode = 'es';
      break;
    case 'Swedish':
      langCode = 'sv';
      break;
    case 'Tamil':
      langCode = 'ta';
      break;
    case 'Telugu':
      langCode = 'te';
      break;
    case 'Ukrainian':
      langCode = 'uk';
      break;
    default:
      langCode = 'en';
  }
  print('langCode : $langCode');
}

List<PopupMenuEntry<String>> countryList = [
  const PopupMenuItem<String>(
    value: 'Australia',
    child: Text('Australia'),
  ),
  const PopupMenuItem<String>(
    value: 'Brazil',
    child: Text('Brazil'),
  ),
  const PopupMenuItem<String>(
    value: 'Canada',
    child: Text('Canada'),
  ),
  const PopupMenuItem<String>(
    value: 'China',
    child: Text('China'),
  ),
  const PopupMenuItem<String>(
    value: 'Egypt',
    child: Text('Egypt'),
  ),
  const PopupMenuItem<String>(
    value: 'France',
    child: Text('France'),
  ),
  const PopupMenuItem<String>(
    value: 'Germany',
    child: Text('Germany'),
  ),
  const PopupMenuItem<String>(
    value: 'Greece',
    child: Text('Greece'),
  ),
  const PopupMenuItem<String>(
    value: 'Hong Kong',
    child: Text('Hong Kong'),
  ),
  const PopupMenuItem<String>(
    value: 'India',
    child: Text('India'),
  ),
  const PopupMenuItem<String>(
    value: 'Ireland',
    child: Text('Ireland'),
  ),
  const PopupMenuItem<String>(
    value: 'Israel',
    child: Text('Israel'),
  ),
  const PopupMenuItem<String>(
    value: 'Italy',
    child: Text('Italy'),
  ),
  const PopupMenuItem<String>(
    value: 'Japan',
    child: Text('Japan'),
  ),
  const PopupMenuItem<String>(
    value: 'Netherlands',
    child: Text('Netherlands'),
  ),
  const PopupMenuItem<String>(
    value: 'Norway',
    child: Text('Norway'),
  ),
  const PopupMenuItem<String>(
    value: 'Pakistan',
    child: Text('Pakistan'),
  ),
  const PopupMenuItem<String>(
    value: 'Peru',
    child: Text('Peru'),
  ),
  const PopupMenuItem<String>(
    value: 'Philippines',
    child: Text('Philippines'),
  ),
  const PopupMenuItem<String>(
    value: 'Portugal',
    child: Text('Portugal'),
  ),
  const PopupMenuItem<String>(
    value: 'Romania',
    child: Text('Romania'),
  ),
  const PopupMenuItem<String>(
    value: 'Russian Federation',
    child: Text('Russian Federation'),
  ),
  const PopupMenuItem<String>(
    value: 'Singapore',
    child: Text('Singapore'),
  ),
  const PopupMenuItem<String>(
    value: 'Spain',
    child: Text('Spain'),
  ),
  const PopupMenuItem<String>(
    value: 'Sweden',
    child: Text('Sweden'),
  ),
  const PopupMenuItem<String>(
    value: 'Switzerland',
    child: Text('Switzerland'),
  ),
  const PopupMenuItem<String>(
    value: 'Taiwan',
    child: Text('Taiwan'),
  ),
  const PopupMenuItem<String>(
    value: 'Ukraine',
    child: Text('Ukraine'),
  ),
  const PopupMenuItem<String>(
    value: 'United Kingdom',
    child: Text('United Kingdom'),
  ),
  const PopupMenuItem<String>(
    value: 'United States',
    child: Text('United States'),
  ),
  // Add more countries here
];

getCountryCode(String country) {
  switch (country) {
    case 'Australia':
      countryCode = 'au';
      break;
    case 'Brazil':
      countryCode = 'br';
      break;
    case 'Canada':
      countryCode = 'ca';
      break;
    case 'China':
      countryCode = 'cn';
      break;
    case 'Egypt':
      countryCode = 'eg';
      break;
    case 'France':
      countryCode = 'fr';
      break;
    case 'Germany':
      countryCode = 'de';
      break;
    case 'Greece':
      countryCode = 'gr';
      break;
    case 'Hong Kong':
      countryCode = 'hk';
      break;
    case 'India':
      countryCode = 'in';
      break;
    case 'Ireland':
      countryCode = 'ie';
      break;
    case 'Israel':
      countryCode = 'il';
      break;
    case 'Italy':
      countryCode = 'it';
      break;
    case 'Japan':
      countryCode = 'jp';
      break;
    case 'Netherlands':
      countryCode = 'nl';
      break;
    case 'Norway':
      countryCode = 'no';
      break;
    case 'Pakistan':
      countryCode = 'pk';
      break;
    case 'Peru':
      countryCode = 'pe';
      break;
    case 'Philippines':
      countryCode = 'ph';
      break;
    case 'Portugal':
      countryCode = 'pt';
      break;
    case 'Romania':
      countryCode = 'ro';
      break;
    case 'Russian Federation':
      countryCode = 'ru';
      break;
    case 'Singapore':
      countryCode = 'sg';
      break;
    case 'Spain':
      countryCode = 'es';
      break;
    case 'Sweden':
      countryCode = 'se';
      break;
    case 'Switzerland':
      countryCode = 'ch';
      break;
    case 'Taiwan':
      countryCode = 'tw';
      break;
    case 'Ukraine':
      countryCode = 'ua';
      break;
    case 'United Kingdom':
      countryCode = 'gb';
      break;
    case 'United States':
      countryCode = 'us';
      break;
    default:
      countryCode = 'us';
  }

  print('countryCode : $countryCode');
}

launchWebsite(String url) async {
  await launchUrl(Uri.parse(url), mode: LaunchMode.inAppWebView);
}
