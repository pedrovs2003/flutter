import 'package:flutter/material.dart';
import 'package:flutter_application_1/navegacaoPage/page3.dart';

class Page2 extends StatelessWidget {
  Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    settings: RouteSettings(name: 'page3'),
                    builder: (context) => Page3(),
                  ));
                },
                child: Text('Page3 via Page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Pop')),
            ElevatedButton(onPressed: () {}, child: Text('Page3 via Named')),
          ],
        ),
      ),
    );
  }
}
