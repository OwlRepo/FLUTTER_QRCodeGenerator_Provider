import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:provider/provider.dart';
import 'package:qrify/Providers/DateTimeProvider.dart';
class QRImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final getTime = Provider.of<DateTimeProvider>(context);
    final getDate = Provider.of<DateTimeProvider>(context);    
    return Container(
      decoration: BoxDecoration(
        color:Colors.green
      ),
      constraints: BoxConstraints.expand(
        height:150,
      ),
      child: Center(
        child: QrImage(
          data: getTime.timeNow + "\n" + getDate.dateNow,
        ),
      ),
    );
  }
}