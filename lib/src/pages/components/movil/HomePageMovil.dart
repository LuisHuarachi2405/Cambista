import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectcambista/src/pages/components/background.dart';

class HomePageMovil extends StatefulWidget {
  HomePageMovil({Key key}) : super(key: key);

  @override
  _HomePageMovilState createState() => _HomePageMovilState();
}

class _HomePageMovilState extends State<HomePageMovil> {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rextie",
          style: TextStyle(color: Color(0xff0511C9)),
        ),
        // centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.whatshot,
              color: Color(0xff0511C9),
            ),
            onPressed: null),
        actions: [
          Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.orange[800],
                )),
            child: CupertinoButton(
              child: Text(
                "Iniciar Sesion",
                style: TextStyle(color: Colors.orange[800]),
              ),
              onPressed: () {},
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              padding: EdgeInsets.all(5),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: CupertinoButton(
              child: Text("Registrate"),
              onPressed: () {},
              borderRadius: BorderRadius.circular(15),
              color: Colors.orange[800],
              padding: EdgeInsets.all(5),
            ),
          ),
        ],
      ),
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: size.height * 0.5,
                width: double.infinity,
                child: Flexible(
                  child: Column(
                    children: [
                      Flexible(
                        //Imagen de la entrada
                        child: Container(
                          child: Image.asset(
                            'assets/img/welcome_img.gif',
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                            "Cambia dólares desde tu casa al mejor tipo de cambio"),
                      ),
                      Flexible(
                        child: Text(
                            "También puedes pagar tu tarjeta de crédito con nosotros."),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
