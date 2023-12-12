import 'package:flutter/material.dart';
import 'package:flutterando_1/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green[500]),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                    'https://static.wikia.nocookie.net/animeverso/images/f/f3/Steve.png/revision/latest?cb=20220101052050&path-prefix=pt-br'),
              ),
              accountName: Text('Guilherme Marques'),
              accountEmail: Text('guilhermeluciano99@gmail.com')),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            subtitle: Text('Tela de inicio'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Logout'),
            subtitle: Text('Finalizar Sessão.'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
        ]),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          CustomSwitcher(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Contador: $counter',
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          }),
    );
  }
}

class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isdarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
