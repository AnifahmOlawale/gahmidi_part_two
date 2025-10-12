import 'package:flutter/material.dart';
import 'package:quran_app/util/app_info.dart';
import 'package:quran_app/util/launch_url.dart';

class DownloadOtherPart {
  //

  static Future<void> downOthersDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "Download Other Parts",
            style: TextStyle(fontSize: 18),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //Download Part Two Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize:
                      const Size(double.infinity, 48), // Slightly taller button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => launchURL(
                  context,
                  url: isAndroid ? playStoreLinkOne : appleStoreLinkOne,
                ),
                child: const Text("Download Part One"),
              ),
              const SizedBox(
                height: 20,
              ),
              //Download Part Three Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize:
                      const Size(double.infinity, 48), // Slightly taller button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => launchURL(
                  context,
                  url: isAndroid ? playStoreLinkThree : appleStoreLinkThree,
                ),
                child: const Text("Download Part Three"),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        );
      },
    );
  }
}
