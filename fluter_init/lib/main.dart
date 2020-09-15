import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Nav-bar
    return MaterialApp(
      title: 'Flutter Init',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo List View Page'),
    );
  }
}

// body
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   padding: const EdgeInsets.all(8),
    //   children: <Widget>[
    //     Container(
    //       alignment: Alignment.center,
    //       height: 50,
    //       color: Colors.blue[300],
    //       child: const Center(child: Text('Hello')),
    //       constraints: BoxConstraints(
    //         maxHeight: 400,
    //         maxWidth: 400,
    //         minHeight: 100,
    //         minWidth: 100,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       height: 50,
    //       color: Colors.blue[200],
    //       child: const Center(child: Text(' Flutter')),
    //       constraints: BoxConstraints(
    //         maxHeight: 400,
    //         maxWidth: 400,
    //         minHeight: 100,
    //         minWidth: 100,
    //       ),
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       height: 50,
    //       color: Colors.amber[100],
    //       child: const Center(
    //           child: FlutterLogo(
    //         size: 200,
    //       )),
    //       constraints: BoxConstraints(
    //         maxHeight: 400,
    //         maxWidth: 400,
    //         minHeight: 100,
    //         minWidth: 100,
    //       ),
    //     ),
    //   ],
    //   addAutomaticKeepAlives: false,
    // );
    final title = 'Grid List';
    final image = "Fade in images";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(image),
        ),
        // body: GridView.count(
        //   crossAxisCount: 3,
        //   children: List.generate(100, (index) {
        //     return Center(
        //       child: Text(
        //         'Item $index',
        //         style: Theme.of(context).textTheme.headline5,
        //       ),
        //     );
        //   }),
        // ),
        body: Stack(
          children: <Widget>[
            Center(child: CircularProgressIndicator()),
            Center(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: 'https://picsum.photos/250?image=9',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
