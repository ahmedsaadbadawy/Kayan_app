import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @onboardingTitle1.
  ///
  /// In en, this message translates to:
  /// **'Buy or Rent a Property'**
  String get onboardingTitle1;

  /// No description provided for @onboardingDesc1.
  ///
  /// In en, this message translates to:
  /// **'Find your perfect home with our curated property listings.'**
  String get onboardingDesc1;

  /// No description provided for @onboardingTitle2.
  ///
  /// In en, this message translates to:
  /// **'Advertise Your Property'**
  String get onboardingTitle2;

  /// No description provided for @onboardingDesc2.
  ///
  /// In en, this message translates to:
  /// **'Showcase your property to attract the right buyers or renters.'**
  String get onboardingDesc2;

  /// No description provided for @onboardingTitle3.
  ///
  /// In en, this message translates to:
  /// **'Talk to Our Agents'**
  String get onboardingTitle3;

  /// No description provided for @onboardingDesc3.
  ///
  /// In en, this message translates to:
  /// **'Work with our experts to navigate your real estate needs.'**
  String get onboardingDesc3;

  /// No description provided for @findDreamHomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Find Your Dream Home'**
  String get findDreamHomeTitle;

  /// No description provided for @findDreamHomeSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Discover your dream home with our curated property listings.'**
  String get findDreamHomeSubTitle;

  /// No description provided for @ourFinishesTitle.
  ///
  /// In en, this message translates to:
  /// **'Our Finishes'**
  String get ourFinishesTitle;

  /// No description provided for @ourFinishesSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Every detail can be fully customized to match your personal taste.'**
  String get ourFinishesSubTitle;

  /// No description provided for @ourExpertsTipsTitle.
  ///
  /// In en, this message translates to:
  /// **'Our Experts Tips'**
  String get ourExpertsTipsTitle;

  /// No description provided for @ourExpertsTipsSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Transformed luxury living that effortlessly merges comfort with style.'**
  String get ourExpertsTipsSubTitle;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @blog1Title.
  ///
  /// In en, this message translates to:
  /// **'The Ultimate Guide to Finding Your Ideal Neighborhood'**
  String get blog1Title;

  /// No description provided for @blog1Date.
  ///
  /// In en, this message translates to:
  /// **'Dec 28, 2024'**
  String get blog1Date;

  /// No description provided for @blog1SubTitle.
  ///
  /// In en, this message translates to:
  /// **'Location & Amenities Analysis'**
  String get blog1SubTitle;

  /// No description provided for @blog1P1.
  ///
  /// In en, this message translates to:
  /// **'Finding the perfect home starts long before you look at floor plans; it begins with evaluating the surrounding community, school districts, and daily commute times.'**
  String get blog1P1;

  /// No description provided for @blog1P2.
  ///
  /// In en, this message translates to:
  /// **'Experts recommend visiting a prospective neighborhood at different hours of the day—both morning rush hour and late evening—to truly gauge noise levels, traffic patterns, and overall safety.'**
  String get blog1P2;

  /// No description provided for @blog1P3.
  ///
  /// In en, this message translates to:
  /// **'Proximity to grocery stores, green spaces, and future city development plans can drastically impact both your quality of life and the long-term resale value of your property.'**
  String get blog1P3;

  /// No description provided for @blog2Title.
  ///
  /// In en, this message translates to:
  /// **'The Art of Hosting: Preparing Your Home for Sale'**
  String get blog2Title;

  /// No description provided for @blog2Date.
  ///
  /// In en, this message translates to:
  /// **'Dec 27, 2025'**
  String get blog2Date;

  /// No description provided for @blog2SubTitle.
  ///
  /// In en, this message translates to:
  /// **'First Impressions & Open House Strategy'**
  String get blog2SubTitle;

  /// No description provided for @blog2P1.
  ///
  /// In en, this message translates to:
  /// **'When hosting an open house, your primary goal is to allow potential buyers to clear their minds and easily envision themselves living comfortably within your space.'**
  String get blog2P1;

  /// No description provided for @blog2P2.
  ///
  /// In en, this message translates to:
  /// **'This requires a deep decluttering process: removing overly personal items like family photos, clearing off kitchen countertops completely, and ensuring pristine cleanliness in every corner.'**
  String get blog2P2;

  /// No description provided for @blog2P3.
  ///
  /// In en, this message translates to:
  /// **'Strategic lighting, opening up all window blinds to maximize natural daylight, and introducing subtle, clean scents like citrus or vanilla can instantly make the entire space feel more welcoming.'**
  String get blog2P3;

  /// No description provided for @blog3Title.
  ///
  /// In en, this message translates to:
  /// **'Interior Design Trends: Creating Timeless Spaces'**
  String get blog3Title;

  /// No description provided for @blog3Date.
  ///
  /// In en, this message translates to:
  /// **'Jan 1, 2025'**
  String get blog3Date;

  /// No description provided for @blog3SubTitle.
  ///
  /// In en, this message translates to:
  /// **'Balancing Aesthetics and Longevity'**
  String get blog3SubTitle;

  /// No description provided for @blog3P1.
  ///
  /// In en, this message translates to:
  /// **'While keeping up with modern design trends is exciting, true luxury lies in selecting foundational elements that stand the test of time rather than quickly fading out of style.'**
  String get blog3P1;

  /// No description provided for @blog3P2.
  ///
  /// In en, this message translates to:
  /// **'Design experts suggest choosing neutral palettes for large canvas areas like walls and floors, then layering in personality with easily swappable textiles, lighting fixtures, and artwork.'**
  String get blog3P2;

  /// No description provided for @blog3P3.
  ///
  /// In en, this message translates to:
  /// **'Incorporating high-quality organic materials such as natural stone, rich hardwoods, and brushed linens brings an authentic warmth and enduring sophistication to any room.'**
  String get blog3P3;

  /// No description provided for @blog4Title.
  ///
  /// In en, this message translates to:
  /// **'Budget-Friendly Upgrades: Boosting Home Value'**
  String get blog4Title;

  /// No description provided for @blog4Date.
  ///
  /// In en, this message translates to:
  /// **'Jan 13, 2025'**
  String get blog4Date;

  /// No description provided for @blog4SubTitle.
  ///
  /// In en, this message translates to:
  /// **'High-ROI Remodeling Tactics'**
  String get blog4SubTitle;

  /// No description provided for @blog4P1.
  ///
  /// In en, this message translates to:
  /// **'You don\'t always need a massive structural renovation budget to significantly increase your home’s market value and draw buyers in.'**
  String get blog4P1;

  /// No description provided for @blog4P2.
  ///
  /// In en, this message translates to:
  /// **'Minor cosmetic updates yield the highest return on investment (ROI). Simple fixes include applying a fresh coat of modern neutral paint, replacing dated cabinet hardware, and upgrading old light switches.'**
  String get blog4P2;

  /// No description provided for @blog4P3.
  ///
  /// In en, this message translates to:
  /// **'Focusing heavily on the entryway and front yard curb appeal is another highly cost-effective strategy that sets a strong, positive tone before a buyer even steps through the front door.'**
  String get blog4P3;

  /// No description provided for @blog5Title.
  ///
  /// In en, this message translates to:
  /// **'10 Essential Tips to Stage Your Home Like a Pro'**
  String get blog5Title;

  /// No description provided for @blog5Date.
  ///
  /// In en, this message translates to:
  /// **'March 15, 2025'**
  String get blog5Date;

  /// No description provided for @blog5SubTitle.
  ///
  /// In en, this message translates to:
  /// **'Spatial Layout & Furniture Arrangement'**
  String get blog5SubTitle;

  /// No description provided for @blog5P1.
  ///
  /// In en, this message translates to:
  /// **'Professional home staging isn\'t just about decorating; it\'s a strategic psychological tool used to optimize the perception of square footage and spatial flow.'**
  String get blog5P1;

  /// No description provided for @blog5P2.
  ///
  /// In en, this message translates to:
  /// **'Arranging your furniture away from walls creates open conversational groupings and makes tight rooms feel substantially larger and more intentional.'**
  String get blog5P2;

  /// No description provided for @blog5P3.
  ///
  /// In en, this message translates to:
  /// **'By highlighting your home’s absolute best architectural features—such as a fireplace, a large bay window, or a high ceiling—you naturally guide the buyer\'s eye exactly where it needs to go.'**
  String get blog5P3;

  /// No description provided for @egp.
  ///
  /// In en, this message translates to:
  /// **'EGP '**
  String get egp;

  /// No description provided for @forSale.
  ///
  /// In en, this message translates to:
  /// **'FOR SALE'**
  String get forSale;

  /// No description provided for @forRent.
  ///
  /// In en, this message translates to:
  /// **'FOR RENT'**
  String get forRent;

  /// No description provided for @propertyType.
  ///
  /// In en, this message translates to:
  /// **'Property Type'**
  String get propertyType;

  /// No description provided for @spaciousLife.
  ///
  /// In en, this message translates to:
  /// **'Spacious life'**
  String get spaciousLife;

  /// No description provided for @noOfRooms.
  ///
  /// In en, this message translates to:
  /// **'No of Rooms'**
  String get noOfRooms;

  /// No description provided for @listedProperties.
  ///
  /// In en, this message translates to:
  /// **'Listed properties'**
  String get listedProperties;

  /// No description provided for @meterSquare.
  ///
  /// In en, this message translates to:
  /// **'{meters} Meter²'**
  String meterSquare(Object meters);

  /// No description provided for @roomsCount.
  ///
  /// In en, this message translates to:
  /// **'{rooms} Rooms'**
  String roomsCount(Object rooms);

  /// No description provided for @parkingText.
  ///
  /// In en, this message translates to:
  /// **'Parking'**
  String get parkingText;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
