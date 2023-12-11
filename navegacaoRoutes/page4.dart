import 'package:flutter/material.dart';
import 'package:flutter_application_1/navegacaoRoutes/page1.dart';

class Page4 extends StatelessWidget {
  Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  //****pushAndRemoveUntil****

                  // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                  //   settings: RouteSettings(name: 'page1'),
                  //   builder: (context) => Page1(),
                  // ),
                  // ModalRoute.withName('page2')
                  // );

                  //Removendo todas as páginas
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        settings: RouteSettings(name: 'page1'),
                        builder: (context) => Page1(),
                      ),
                      (route) => route.isFirst);
                },
                child: Text('Page1 via Page')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Pop')),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil('/page1', ModalRoute.withName('/page2'));
            }, child: Text('Page3 via Named')),
          ],
        ),
      ),
    );
  }
}
