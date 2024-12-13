import 'package:flutter/material.dart';

class ListViewScreenQCP extends StatelessWidget {
  const ListViewScreenQCP({Key? key}) : super(key: key);

  void mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Aviso'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('El sistema de reservas está deshabilitado en estos momentos.'),
              SizedBox(height: 20),
              FlutterLogo(size: 100),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Flutter App'),
        backgroundColor: Colors.blue,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://e7.pngegg.com/pngimages/452/994/png-clipart-bill-gates-quotes-bill-gates-quotes-quotations-famous-quotes-bill-gates-s-house-microsoft-the-world-s-billionaires-steve-jobs-quotes-quotations.png',
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.sports_basketball_rounded), 
                SizedBox(width: 10), 
                Text('Pistas'), 
              ],
            ),
            onTap: () {
              print('Entrando a Pistas');
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            title: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.computer_rounded), 
                SizedBox(width: 10), 
                Text('Monitores'), 
              ],
            ),
            onTap: () {
              print('Entrando a Monitores');
            },
          ),

          const SizedBox(height: 10),
          ListTile(
             title: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.calendar_month_rounded), 
                SizedBox(width: 10), 
                Text('Reservas'), 
              ],
            ),
            onTap: () {
              mostrarAlerta(context);
            },
          ),
        ],
      ),
    );
  }
}
