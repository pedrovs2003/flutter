import 'package:flutter/material.dart';

class R14 extends StatelessWidget {
  const R14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('Layout Modelo'),
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Home Page',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Pedro'),
              accountEmail: Text('Pedro@.com'),
              currentAccountPicture: CircleAvatar(
                //O código acima deixa a imagem redonda
                backgroundImage: AssetImage('assets/images/casal.jpg'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.announcement),
              title: const Text("Anúncios"),
              subtitle: const Text("mais informações..."),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                print("Anúncios");
                Navigator.pop(context);
                Navigator.pushNamed(context, "/anuncios");
              },
            ),
            ListTile(
              leading: const Icon(Icons.cloud),
              title: const Text("Dados"),
              subtitle: const Text("mais informações..."),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                print("Dados");
                Navigator.pop(context);
                Navigator.pushNamed(context, "/dados");
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text("Favoritos"),
              subtitle: const Text("mais informações..."),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                print("Favoritos");
                Navigator.pop(context);
                Navigator.pushNamed(context, "/favoritos");
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text("Logout"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                print("Logout");
              },
            )
          ],
        ),
      ),
    );
  }
}
