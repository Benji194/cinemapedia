import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getLoadingMenssages() {
    final messsages = <String>[
      'Cargando Peliculas',
      'Comprando Palomitas de maiz',
      'Cargando populares',
      'Llamando a mi novia',
      'Ya mero....',
      'Esto está tardando mas de lo esperadop :(',
      'Ethernal Sadness',
    ];

    return Stream.periodic(const Duration(milliseconds: 1200), (step) {
      return messsages[step];
    }).take(messsages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Espere por favor'),
          const SizedBox(
            height: 10,
          ),
          const CircularProgressIndicator(
            strokeWidth: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          StreamBuilder(
            stream: getLoadingMenssages(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const Text('Cargando.....');

              return Text(  snapshot.data!);
            },
          )
        ],
      ),
    );
  }
}
