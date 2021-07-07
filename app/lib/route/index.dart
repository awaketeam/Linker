import 'package:flutter/material.dart';
import 'package:app/view/import_wallet/index.dart';
import 'package:app/view/transfer/index.dart';
import 'package:app/view/developer/index.dart';
import 'package:app/view/developer/dev_network.dart';


class Routes {
  static Map<String, WidgetBuilder> getRoutes(BuildContext context) {
    return {
      "import_wallet": (context) => ImportWalletPage(),
      "transfer": (context) => TransferPage(),

      // 开发者
      "developer": (context) => DeveloperPage(),
      "dev_network": (context) => DevNetworkPage(),
    };
  }
}
