import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now(); // If date is null, use current date
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String formatDateWithTime(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy hh:mm a').format(date);
  }

  static String formatDateWithTimeAndSeconds(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy hh:mm:ss a').format(date);
  }

  static String formatDateWithTimeAndSecondsAndTimeZone(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy hh:mm:ss a z').format(date);
  }

  static String formatPhoneNumber(String phoneNumber) {
    return phoneNumber.replaceAllMapped(RegExp(r'^(\d{3})(\d{3})(\d{4})$'),
        (Match m) => '(${m[1]}) ${m[2]}-${m[3]}');
  }

  // Format phone number assuming it's 10 digits long

  static String formatPhoneNumberDigits(String phoneNumber) {
    // Your code here
    //  Assuming a 10-digit phone number, format it as (123) 456-7890
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)}-${phoneNumber.substring(6)}';
    }

    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    return phoneNumber.replaceAllMapped(RegExp(r'^(\d{3})(\d{3})(\d{4})$'),
        (Match m) => '+1 (${m[1]}) ${m[2]}-${m[3]}');
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(
      locale: 'en_US',
      symbol: '\$',
      decimalDigits: 2,
    ).format(amount);
  }

  static String formatCurrencyWithoutSymbol(num amount) {
    return NumberFormat.currency(
      locale: 'en_US',
      decimalDigits: 2,
    ).format(amount);
  }

  static String formatCurrencyWithoutDecimal(num amount) {
    return NumberFormat.currency(
      locale: 'en_US',
      symbol: '\$',
      decimalDigits: 0,
    ).format(amount);
  }

  static String formatCurrencyWithoutSymbolAndDecimal(num amount) {
    return NumberFormat.currency(
      locale: 'en_US',
      decimalDigits: 0,
    ).format(amount);
  }

  static String formatCurrencyWithoutSymbolAndDecimalWithComma(num amount) {
    return NumberFormat.currency(
      locale: 'en_US',
      decimalDigits: 0,
    ).format(amount).replaceAll(',', '.');
  }

  static String formatCurrencyWithoutSymbolAndDecimalWithCommaAndDot(
      num amount) {
    return NumberFormat.currency(
      locale: 'en_US',
      decimalDigits: 0,
    ).format(amount).replaceAll(',', '.').replaceAll('.', ',');
  }

  static String formatCurrencyWithoutSymbolAndDecimalWithCommaAndDotAndSpace(
      num amount) {
    return NumberFormat.currency(
      locale: 'en_US',
      decimalDigits: 0,
    )
        .format(amount)
        .replaceAll(',', '.')
        .replaceAll('.', ',')
        .replaceAll(' ', '');
  }

  static String
      formatCurrencyWithoutSymbolAndDecimalWithCommaAndDotAndSpaceAndDollar(
          num amount) {
    return NumberFormat.currency(
      locale: 'en_US',
      decimalDigits: 0,
    )
        .format(amount)
        .replaceAll(',', '.')
        .replaceAll('.', ',')
        .replaceAll(' ', '')
        .replaceAll('\$', '');
  }

  static String
      formatCurrencyWithoutSymbolAndDecimalWithCommaAndDotAndSpaceAndDollarAndPercent(
          num amount) {
    return NumberFormat.currency(
      locale: 'en_US',
      decimalDigits: 0,
    )
        .format(amount)
        .replaceAll(',', '.')
        .replaceAll('.', ',')
        .replaceAll(' ', '')
        .replaceAll('\$', '')
        .replaceAll('%', '');
  }

  static String
      formatCurrencyWithoutSymbolAndDecimalWithCommaAndDotAndSpaceAndDollarAndPercentAndPlus(
          num amount) {
    return NumberFormat.currency(
      locale: 'en_US',
      decimalDigits: 0,
    )
        .format(amount)
        .replaceAll(',', '.')
        .replaceAll('.', ',')
        .replaceAll(' ', '')
        .replaceAll('\$', '')
        .replaceAll('%', '')
        .replaceAll('+', '');
  }
}
