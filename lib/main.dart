import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget _createSliderDot(Color color) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsets.symmetric(horizontal: 2.5),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(100)),
    );
  }

  Widget _createContainerMenuItem(IconData icon, String text) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Card(
        color: Color.fromRGBO(154, 79, 177, 1.0),
        child: Container(
          padding: EdgeInsets.all(7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                icon,
                color: Colors.white,
              ),
              Container(
                width: 120,
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createMainContainer(Widget child) {
    return Container(
      width: 400,
      height: 320,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Card(child: Center(child: child)),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      margin: EdgeInsets.only(top: 57.0, bottom: 15.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png',
                width: 40,
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(left: 15.0),
                child: Text('Gabriel',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 26,
            color: Colors.white,
          )
        ],
      ),
    );

    Widget sliderSection = Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _createSliderDot(Colors.white),
          _createSliderDot(Color.fromRGBO(154, 79, 177, 1.0)),
          _createSliderDot(Color.fromRGBO(154, 79, 177, 1.0)),
        ],
      ),
    );

    Widget bottomSection = Container(
      height: 120,
      margin: EdgeInsets.only(top: 25, left: 15),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _createContainerMenuItem(Icons.person_add, 'Indicar amigos'),
          _createContainerMenuItem(Icons.monetization_on, 'Depositar'),
          _createContainerMenuItem(Icons.monetization_on, 'Transferir'),
          _createContainerMenuItem(Icons.reorder, 'Pagar'),
        ],
      ),
    );

    Widget currentBalanceSection = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.monetization_on,
                  color: Colors.black38,
                  size: 30,
                ),
                Icon(
                  Icons.remove_red_eye,
                  color: Colors.black38,
                  size: 30,
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Saldo disponível',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'R\$ 50.000,00',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 36,
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(left: 20),
              ),
          ),
          Container(
            color: Colors.grey[200],
            height: 75,
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                'Transferência de \$30.000,20 recebida de Bill Gates hoje as 15:00h',
                style: TextStyle(
                    fontSize: 16
                ),
              ),
            ),
          )
        ],
      ),
    );

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(130, 37, 158, 1.0)),
          child: Column(
            children: <Widget>[
              titleSection,
              _createMainContainer(currentBalanceSection),
              sliderSection,
              bottomSection
            ],
          ),
        ),
      ),
    );
  }
}
