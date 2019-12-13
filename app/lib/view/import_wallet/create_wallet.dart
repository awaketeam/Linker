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
    return ImprotWallet(title: '创建钱包');
  }
}


class ImprotWallet extends StatefulWidget {
  ImprotWallet({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ImprotWalletState createState() => _ImprotWalletState();
}

class _ImprotWalletState extends State<ImprotWallet> {

  _getListData(){

    var eosWalletEntry = new _WalletEntry();
    eosWalletEntry.title = 'EOS';
    eosWalletEntry.imgPath = 'images/EOS.png';

    var eosForceWalletEntry = new _WalletEntry();
    eosForceWalletEntry.title = 'EOSForce';
    eosForceWalletEntry.imgPath = 'images/EOSC.png';

    var telosWalletEntry = new _WalletEntry();
    telosWalletEntry.title = 'Telos';
    telosWalletEntry.imgPath = 'images/TELOS.png';

    var bosWalletEntry = new _WalletEntry();
    bosWalletEntry.title = 'BOS';
    bosWalletEntry.imgPath = 'images/BOS.png';

    var vexWalletEntry = new _WalletEntry();
    vexWalletEntry.title = 'VEX';
    vexWalletEntry.imgPath = 'images/VEX.png';

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



