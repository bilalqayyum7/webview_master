import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebViewContainer extends StatefulWidget {
  final url;
  WebViewContainer(this.url);

  @override
  createState() => _WebViewContainerState(this.url);
}
 class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(backgroundColor: Colors.lightBlue,);
  }
 }

class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  final _key = UniqueKey();
  String _value = '0';

  _WebViewContainerState(this._url);
  num position = 1;
  doneLoading(){
    setState(() {
      position = 0;
    });
  }
  startLoading(){
    setState(() {
      position = 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Webview'),
        actions: <Widget>[
          new Theme(
              child: new DropdownButtonHideUnderline(
                  child: new DropdownButton<String>(
                    value: _value,
                      items: <DropdownMenuItem<String>>[
                        new DropdownMenuItem(
                            child: new Text('Select'),
                        value: '0',),
                        new DropdownMenuItem(
                          child: new Text('Email Links'),
                          value: 'one',),
                        new DropdownMenuItem(
                          child: new Text('See Favorites'),
                          value: 'two',),
                      ],
                    onChanged: (String value) {
                    setState(() => _value = value);
                  },
                  ),
              ),
            data: new ThemeData.dark(),
          ),
        ],
      ),
      body: Column(
        children: [

          Body(),
          Expanded(child: WebView(
            key: _key,
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: _url,

          )),
          FloatingActionButton.extended(onPressed: (){},
              label: Text(''),
          icon: Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,),
        ],
      ),
    );
  }
}