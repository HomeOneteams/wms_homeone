import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:buddhist_datetime_dateformat_sns/buddhist_datetime_dateformat_sns.dart';
import 'package:pattern_formatter/pattern_formatter.dart';

class LuffyFormating {
  static String onePiceMonneyFormat({required dynamic number, int? length}) {
    try {
      var f = NumberFormat('#,##0.${length == null ? '00' : '0' * length}',
          'th_TH'); //40   ->  40.00 ||4000 -> 4,000.00000
      return f.format(number);
    } catch (e) {
      print(
        "🚀 ~ file: number_format.dart ~ line 11 ~ NumberFormating ~ StringstringToMonneyFormat ~ e ${e.toString()}",
      );

      return 'error';
    }
  }

  static String onePiceDateFormat({required dynamic number}) {
    try {
      var now = number as DateTime;
      var formatter = DateFormat('d/MM/y');
      var dateInBuddhistCalendarFormat =
          formatter.formatInBuddhistCalendarThai(now);
      return dateInBuddhistCalendarFormat;
    } catch (e) {
      print(
        "🚀 ~ file: number_format.dart ~ line 11 ~ NumberFormating ~ StringstringToMonneyFormat ~ e ${e.toString()}",
      );
      return 'error';
    }
  }

  static List<TextInputFormatter> onePiceInputFormat(
      {required TextInputEnum type}) {
    switch (type) {
      case TextInputEnum.MONEY:
        return onePiceFormatMoney(type: TextInputEnum.MONEY); // 123,000,200
      case TextInputEnum.DATE:
        return onePiceFormatDate(type: TextInputEnum.DATE); // 10/01/2541
      case TextInputEnum.CREADIT:
        return onePiceFormatCreditCard(type: TextInputEnum.CREADIT);
      default:
        return onePiceFormatMoney(type: TextInputEnum.MONEY);
    }
  }

  static List<TextInputFormatter> onePiceFormatMoney(
      {required TextInputEnum type}) {
    return [ThousandsFormatter(allowFraction: true)];
  }

  static List<TextInputFormatter> onePiceFormatDate(
      {required TextInputEnum type}) {
    return [DateInputFormatter()];
  }

  static List<TextInputFormatter> onePiceFormatCreditCard(
      {required TextInputEnum type}) {
    return [DateInputFormatter()];
  }

  static DateTime? onePiceStringToDate({required String date}) {
    try {
      DateTime dt = DateFormat('d/MM/y').parse(date);
      return dt;
    } catch (e) {
      return null;
    }
  }
}

enum TextInputEnum { MONEY, CREADIT, DATE }
