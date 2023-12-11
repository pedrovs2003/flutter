import 'package:flutter/material.dart';
import 'package:flutter_application_1/p2/ptn1.dart';

class PR0 extends StatelessWidget {
  const PR0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'SpotUai',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.black87,
            ),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/p1foto.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(180, 0, 0, 0),
            ),
            const Flexible(
              child: Center(
                child: SizedBox(
                  width: 400,
                  child: Text(
                    textAlign: TextAlign.center,
                    softWrap: true,
                    'Os maiores sucessos do Brasil e do mundo. Tudo no SpotUai a partir de R\$18,90',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 28),
                    maxLines: 4,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => PR1()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.all(13),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: const SizedBox(
                        width: 150,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Vamos Lá',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black87,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
