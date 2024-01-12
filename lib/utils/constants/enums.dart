// LIST of enums used in the app

// They cannot be used as constants in the app. They are just used to store the values of the constants.

// Path: lib/utils/constants/enums.dart

enum TextSizes {
  small,
  medium,
  lg,
  xl,
  xxl,
  xxxl,
}

enum OrderStatus {
  pending,
  processing,
  shipped,
  delivered,
  cancelled,
}

enum PaymentMethods {
  cashOnDelivery,
  creditCard,
  debitCard,
  netBanking,
  upi,
  paypal,
  googlePay,
  phonePe,
  paytm,
  masterCard,
  visa,
  rupay,
  americanExpress,
  paystack,
}

enum TUserType {
  admin,
  user,
}

enum TOnboardingStatus {
  firstTime,
  notFirstTime,
}

enum TOnboardingPage {
  page1,
  page2,
  page3,
}

enum TThemeMode {
  system,
  light,
  dark,
}

enum TAppTheme {
  light,
  dark,
}
