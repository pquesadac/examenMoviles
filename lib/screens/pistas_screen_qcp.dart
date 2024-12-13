/**
 * import 'package:flutter/material.dart';
import 'package:examen_qcpablo/widgets/widgets_qcp.dart';

class PistasScreenQCP extends StatelessWidget {
  final List<Map<String, String>> pistas = [
    {
      'nombre': 'Pista ',
      'imagen': 'https://allforpadel.com/img/cms/pistas/fx2-1.jpg', 
      'descripcion': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    },
    {
      'nombre': 'Piscina cubierta',
      'imagen': 'https://i.ytimg.com/vi/4UC7_paiOHQ/maxresdefault.jpg', 
      'descripcion': 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    },
     {
      'nombre': 'Pista de baloncesto',
      'imagen': 'https://urbancolex.com/wp-content/uploads/2019/03/cancha-de-baloncesto-1024x576.jpg', 
      'descripcion': 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    },
  ];

  const PistasScreenQCP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pistas'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://e7.pngegg.com/pngimages/452/994/png-clipart-bill-gates-quotes-bill-gates-quotes-quotations-famous-quotes-bill-gates-s-house-microsoft-the-world-s-billionaires-steve-jobs-quotes-quotations.png',
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: pistas.length,
        itemBuilder: (context, index) {
          return CustomCardTipo2(
            imageUrl: pistas[index]['imagen']!,
            nombre: pistas[index]['nombre'],
            descripcion: pistas[index]['descripcion'],
          );
        },
      ),
    );
  }
}
 */

