import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrify/Providers/DateTimeProvider.dart';
import 'package:qrify/QRPage/Widgets/QRImageWidget.dart';
import 'package:qrify/QRPage/Widgets/DateTimeWidget.dart';
class QRindex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DateTimeProvider(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            DateTimeWidget(),
            QRImageWidget(),
          ],
        ),
      )
    );
  }
}