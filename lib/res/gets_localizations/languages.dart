import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Enter Your Email',
        },
        'ur_PK': {
          'email_hint': 'In Urdu',
        }
      };
}
