import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kidsbuddy/common.strings.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsappButton extends StatelessWidget {
  const WhatsappButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 4,
      backgroundColor: Colors.green,
      onPressed: () async {
        await canLaunchUrl(Uri.parse(whatsappUrl))
            ? launchUrl(Uri.parse(whatsappUrl))
            : Fluttertoast.showToast(
                msg: "Whatsapp Not Found",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0,
              );
      },
      child: const Icon(
        FontAwesomeIcons.whatsapp,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
