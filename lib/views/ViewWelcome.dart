// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'BO';
  PhoneNumber number = PhoneNumber(isoCode: 'BO');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 60, //<-- SEE HERE
            ),
            Text(
              'BIENVENIDO',
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 20, //<-- SEE HERE
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: const <Widget>[
                  Text('AL UTILIZAR LA APP USTED GOZARA DE LOS SIGUEINTES BENEFICIOS', textAlign: TextAlign.justify),
                  Text('* Reduccion de accidentes', textAlign: TextAlign.justify),
                  Text('* Movilidad para todos: personas ancianas, o con movilidad o vision reducida ', textAlign: TextAlign.justify),
                  Text('* Menos atascos: una conducción eficiente ayudará a reducir en gran medida los atascos en las grandes ciudades.', textAlign: TextAlign.justify),
                  Text('* Compromiso medioambiental: la mayoría de los coches autónomos se moverán con energías alternativas y poco contaminantes. Toyota ya apunta hacia el camino de la sostenibilidad y por ello es la marca pionera de la tecnología híbrida.'),
                  Text('* Comodidad: los pasajeros del vehículo no tendrán que preocuparse por nada. La autonomía del coche es total y no precisa la ayuda del ser humano. Podrás leer, ver una película o incluso dormir.'),
                  Text('* Agilización del transporte: los vehículos encargados del transporte, como los camiones, no tendrán que parar en su camino, por lo que el tiempo del transporte de mercancías se reduciría notablemente.'),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/map-country');
                },
                child: Text('Continuar'),
              ),
            ),
          ],
        ),
      ),
    );
  }



  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
    await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'ES');

    setState(() {
      this.number = number;
    });
  }
}