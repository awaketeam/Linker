import 'package:flutter/material.dart';
import 'package:app/view/import_wallet/index.dart';
import 'package:app/view/transfer/index.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes(BuildContext context) {
    return {
      "import_wallet": (context) => ImportWalletPage(),
      "transfer": (context) => TransferPage(),
    };
  }
}
