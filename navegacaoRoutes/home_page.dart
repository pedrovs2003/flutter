import 'package:flutter/material.dart';
import 'package:flutter_application_1/navegacaoRoutes/page2.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                   settings: RouteSettings(name: 'page2'),
                    builder: (context) => Page2(),
                  ));
                },
                child: Text('Page2 via Page')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamed('/page2');
            }, child: Text('Page2 via Named')),
          ],
        ),
      ),
    );
  }
}
