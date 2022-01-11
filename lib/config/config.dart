


abstract class Config {
  static const String appName = 'Wowfas';
  static const String appIconPath = 'assets/images/app_icon.jpg';
  static const String wowfas_header = 'assets/images/wowfas_header.png';
  static const String wowfas_header2 = 'assets/images/wowfas_header2.png';
  static const String currency = 'INR';
  static const String currencySymbol = '\₹';
  static const String placeholderImageUrl = 'https://via.placeholder.com/100';

  /// Path for the place holder image in the application assets directory
  static const String placeholderImageAssetPath =
      'lib/assets/images/placeholderImage.jpg';

  // Contact Us Page Information -
  //
  // [ENABLE]
  // If you want to enable an option then add the value for it.
  //
  // [DISABLE]
  // If you leave the option empty (For example: '') like this, then
  // the option will not be shown to the user.

  /// Must be a valid URL
  static const String contactUsUrl = 'https://wowfas.com';

  /// This should be a valid phone number
  static const String contactUsPhone = '+91-77173-03227';

  /// Must be a valid email address
  static const String contactUsEmail = 'shop@wowfas.in';

  /// Terms of service URL
  static const String termsOfServiceUrl = 'https://wowfas.com/terms-conditions-mobile';

  /// Privacy policy url
  static const String privacyPolicyUrl = 'https://wowfas.com/privacy-policy-mobile/';

  /// Privacy policy url
  static const String aboutUSUrl = 'https://wowfas.com/about-us-mobile';

  /// Topic to send notifications to a group of users
  static const List<String> NOTIFICATION_TOPICS = [
    'NEW_APP_VERSION_AVAILABLE',
    'PROMOTIONS',
  ];
}