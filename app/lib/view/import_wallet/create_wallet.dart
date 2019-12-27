import 'package:flutter/material.dart';


class _WalletEntry {
  String title;
  String imgPath;

  _WalletEntry({
    this.title,
    this.imgPath,
  });
}


class ImportWalletList extends StatelessWidget {
  const ImportWalletList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImportWallet(title: '创建钱包');
  }
}


class ImportWallet extends StatefulWidget {
  ImportWallet({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ImportWalletState createState() => _ImportWalletState();
}

class _ImportWalletState extends State<ImportWallet> {

  _getListData(){

    var eosWalletEntry = new _WalletEntry(
        title: 'EOS',
        imgPath: 'assets/images/EOS.png',
    );

    var eosForceWalletEntry = new _WalletEntry(
      title: 'EOSForce',
      imgPath: 'assets/images/EOSC.png',
    );

    var telosWalletEntry = new _WalletEntry(
      title: 'Telos',
      imgPath: 'assets/images/TELOS.png',
    );

    var bosWalletEntry = new _WalletEntry(
      title: 'BOS',
      imgPath: 'assets/images/BOS.png',
    );

    var vexWalletEntry = new _WalletEntry(
      title: 'VEX',
      imgPath: 'assets/images/VEX.png',
    );

    List<_WalletEntry> walletEntrys = [
      eosWalletEntry,
      eosForceWalletEntry,
      telosWalletEntry,
      bosWalletEntry,
      vexWalletEntry
    ];

    return walletEntrys;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:(
        WalletCellView(walletEntrys: _getListData())
      ),
    );
  }
}

class WalletCellView extends StatelessWidget{
    final List<_WalletEntry> walletEntrys;
    WalletCellView({Key key, @required this.walletEntrys}):super(key:key);

    @override
    Widget build(BuildContext context){
      return new Container(
        color: Colors.grey[100],
        height: MediaQuery.of(context).size.height,
        child: new ListView.builder(
            itemCount: walletEntrys.length,
            itemBuilder:(context,index){
             return Container(
                 padding: const EdgeInsets.all(16.0),
                 child:GestureDetector(
                     onTap: () {
                       print("tap${index}");
                       },
                     child:Container(
                       decoration: new BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(4.0)),
                         color: Colors.white,
                         border: new Border.all(width: 1, color: Colors.white),
                       ),

                       padding: const EdgeInsets.all(16.0),
                       child: Row(
                         children: <Widget>[
                           Image(
                             image: AssetImage(walletEntrys[index].imgPath),
                             width: 26.0,
                             height: 26.0,
                             repeat: ImageRepeat.repeatY ,
                           ),
                           Text(
                               "${walletEntrys[index].title}"
                           ),
                           Expanded(
                             child: Align(
                               alignment: Alignment.centerRight,
                               child: new Icon(
                                  Icons.arrow_forward_ios,
                               ),
                             ),
                           )
                         ],
                       ),
                     )
                 )
             );
           }
        ),
      );
    }
}



