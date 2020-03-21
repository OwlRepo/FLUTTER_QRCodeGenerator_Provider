import 'package:flutter/material.dart';
class DateTimeProvider with ChangeNotifier
{
    String _timeNow = "";

    String get timeNow => _timeNow;
    
    set timeNow(String time)
    {
      _timeNow = time;
      notifyListeners();
    }

 String _dateNow = "";

    String get dateNow => _dateNow;
    
    set dateNow(String date)
    {
      _dateNow = date;
      notifyListeners();
    }
    
    
}