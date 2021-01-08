import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

//import 'package:webview_flutter/webview_flutter.dart';
class Webview extends StatefulWidget {
  final String url;
  final String titulo;
  final String descripcion;
  const Webview({
    Key key,
    @required this.url,
    @required this.titulo,
    @required this.descripcion,
  }) : super(key: key);
  @override
  _WebviewState createState() => _WebviewState( );
}
class _WebviewState extends State<Webview> {
  final Set<JavascriptChannel> jsChannels = [
    JavascriptChannel(
        name: 'Print',
        onMessageReceived: (JavascriptMessage message) {
         // print(message.message);
        }),
  ].toSet();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final flutterWebViewPlugin = FlutterWebviewPlugin();
    return WebviewScaffold(
      url: widget.url,
      javascriptChannels: jsChannels,
      mediaPlaybackRequiresUserGesture: false,
      appBar: AppBar(
        title:Text( widget.titulo),
      ),
      withZoom: true,
      withLocalStorage: true,
      hidden: true,
      initialChild: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            children: <Widget>[
                SizedBox(
                height: 50,
              ),
              CircularProgressIndicator(),
              SizedBox(
                height: 15,
              ),
              Text(widget.descripcion,
                style: TextStyle(color: Color(0xFFF3CE00) ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                flutterWebViewPlugin.goBack();
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: () {
                flutterWebViewPlugin.goForward();
              },
            ),
            IconButton(
              icon: const Icon(Icons.autorenew),
              onPressed: () {
                flutterWebViewPlugin.reload();
              },
            ),
          ],
        ),
      ),
    );
  }
}
