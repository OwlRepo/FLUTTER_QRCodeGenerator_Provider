import 'package:flutter/material.dart';
import 'package:qrify/Providers/DateTimeProvider.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'dart:async';
class DateTimeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

      final getTime = Provider.of<DateTimeProvider>(context);
      Timer.periodic(Duration(seconds: 1), (v)
      {
      getTime.timeNow = DateFormat.jm().format(DateTime.now());
      });


      final getDate = Provider.of<DateTimeProvider>(context);
      Timer.periodic(Duration(seconds: 1), (v){
        getDate.dateNow = DateFormat.yMMMMd().format(DateTime.now());
      });


    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          constraints: BoxConstraints.expand(
            height:50
          ),
          child: Text(
            getTime.timeNow,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
              fontSize: 25.0,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          constraints: BoxConstraints.expand(
            height:50
          ),
          child: Text(
            getDate.dateNow,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
              fontSize: 25.0,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        )        
        ]
      )
    );
  }
} 