import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectcambista/src/pages/components/background.dart';
import 'package:projectcambista/src/pages/components/Widgets/carousel_pro.dart';

class HomePageMovil extends StatefulWidget {
  HomePageMovil({Key key}) : super(key: key);

  @override
  _HomePageMovilState createState() => _HomePageMovilState();
}

class _HomePageMovilState extends State<HomePageMovil> {
  final array = ['1','2','1'];
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
            onPressed: (){}),
        actions: [
          Container(
            margin: EdgeInsets.all(8),
            child: CupertinoButton(
              child: Text("Registrate"),
              onPressed: () {
                Navigator.of(context).pushNamed('login');
              },
              borderRadius: BorderRadius.circular(15),
              color: Colors.orange[800],
              padding: EdgeInsets.all(5),
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu),
            color:  Colors.orange[800]
          )
        ],
      ),
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top:30),
                height: size.height * 0.2,
                width: size.width * 0.8,
                child: Flexible(
                  child: Column(
                    children: [
                      Flexible(
                        child: Container(
                          width: size.width ,
                          child: Text('Cambia dolares desde tu casa al mejor tipo de cambio',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Color.fromRGBO(0,50,255, 1),fontSize: 20),)
                          ),
                      ),
                      SizedBox(height: 10,),
                      Flexible(
                        child: Container(
                          width: size.width ,
                          child: Text('También puedes pagar tu tarjeta de crédito con nosotros.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey,fontSize: 13),)
                          ),
                      ),
                      
                    ],
                  ),
                ),
              ),
              _form(context),
              SizedBox(height: 10,),
              lista(context),
              unete(context),
              SizedBox(height: 15,),
              Text('¿Que opinan los medios?',style: TextStyle(color: Colors.blue[500],fontSize: 25),textAlign: TextAlign.center,),
              slider(),
              rextieSocios(context),
              SizedBox(height: 20,),
              Text('¿Porque usar Rextie?',style: TextStyle(color: Colors.orange[500],fontSize: 25),textAlign: TextAlign.center,),
              ...array.map((lol) {
                return _imageText(context);
              }),
              descarga(context),
              footer(context)

            ],
          ),
        ),
      ),
    );
  }
}

Widget descarga(BuildContext context){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.9,
        color: Color.fromRGBO(0, 50, 250, 1),
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                   Image.asset('phone.png',
                    width: MediaQuery.of(context).size.width * 0.6 ,
                    height: MediaQuery.of(context).size.height * 0.4
                    ),
                    SizedBox(height: 25,),
                  Text('Cambia dolares desde',style:TextStyle(fontSize: 30,color: Colors.white),textAlign: TextAlign.center),
                  Text('donde estes',style: TextStyle(fontSize: 40,color: Color.fromRGBO(0,200,255, 1)),textAlign: TextAlign.center),
                  SizedBox(height: 15,),
                  Text('Estamos en todas las plataformas digitales,',style: TextStyle(fontSize: 15,color: Colors.white),textAlign: TextAlign.center),
                  Text('¿Qué esperas para descargar nuestra app?',style: TextStyle(fontSize: 15,color: Colors.white),textAlign: TextAlign.center),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('appStore.png',
                        width: MediaQuery.of(context).size.width * 0.3 ,
                        height: MediaQuery.of(context).size.height * 0.1
                        ),
                      Image.asset('playStore.png',
                        width: MediaQuery.of(context).size.width * 0.37,
                        height: MediaQuery.of(context).size.height * 0.1
                        )
                    ],
                  )
          ],
        ),

      );
    } 

Widget _imageText(BuildContext context){
     return Container(
       width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.height*0.7,
       padding: EdgeInsets.symmetric(horizontal: 25),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                    Container(
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           
                           children: [
                             
                             
                             Text('Mejor tipo de cambio',style: TextStyle(color: Color.fromRGBO(0,50,255,1),fontSize: 20),textAlign: TextAlign.center,),
                             Text('Porque nos preocupamos por tu ahorro',style: TextStyle(color: Color.fromRGBO(0,200,255,1),fontSize: 15),textAlign: TextAlign.center,),
                             SizedBox(height: 15,),
                             Text('En Rextie manejamos el mejor tipo de cambio, a comparación de otras entidades financieras.'),
                           ],
                         ),
                       ),
                       Container(
                         child: Image.asset('transfer.png',
                         width: MediaQuery.of(context).size.width * 0.6 ,
                         height: MediaQuery.of(context).size.height * 0.45,
                         ),
                       ),
                      
                 ],
               ),
             );
  }


Widget rextieSocios(BuildContext context){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(0, 50, 250, 1),
        child: Container(
         padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                    Text('Rextie Socios',style: TextStyle(fontSize: 35,color: Colors.white)),
                    SizedBox(height: 50,),
                    Text('Solucion 100% digital de',style:TextStyle(fontSize: 40,color: Colors.white),textAlign: TextAlign.center,),
                    Text('cambio de dolares corporativo',style: TextStyle(fontSize: 40,color: Color.fromRGBO(0,200,255, 1)),textAlign: TextAlign.center,),
                    SizedBox(height: 30,),
                    RaisedButton(
                      onPressed: (){},
                      child: Text('Registra tu empresa aqui'),
                      color:  Color.fromRGBO(0,200,255, 1),
                      textColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                    ),
              Expanded(
                            child: Image.asset('group.png',
                width: MediaQuery.of(context).size.width * 0.55 ,
                height: MediaQuery.of(context).size.height * 0.55
                ),
              )
            ],
          ),
        )
        

      );
    }

Widget lista(BuildContext context){
  var PromoHorizontalList = Container(
    margin: EdgeInsets.only(top: 5),
      color: Colors.white,
      height: MediaQuery.of(context).size.height*0.7,
      padding: EdgeInsets.only(bottom: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 20.0, bottom: 3.0,right: 20.0),
              child: Text(
                'Miles de usuarios felices',
                style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: "Sans",
                    fontWeight: FontWeight.w700),
              )),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10.0),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 20.0)),
                InkWell(
                    onTap:(){},
                    child: Image.asset("lista/Discount1.png")),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                InkWell(
                    onTap: (){},
                    child: Image.asset("lista/Discount3.png")),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                InkWell(
                    onTap: (){},
                    child: Image.asset("lista/Discount2.png")),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                InkWell(
                    onTap: (){},
                    child: Image.asset("lista/Discount4.png")),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                InkWell(
                    onTap: (){},
                    child: Image.asset("lista/Discount5.png")),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                InkWell(
                    onTap: (){},
                    child: Image.asset("lista/Discount6.png")),
              ],
            ),
          ),
          SizedBox(height: 15),
               
        ],
      ),
    );
return PromoHorizontalList;
}

Widget unete(BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(horizontal: 5),
    child: Column(
      children: [
           Text('¡Únete a nosotros, empieza a ahorrar!',style: TextStyle(color: Color.fromRGBO(255,110,0 ,1),fontSize: 20),),
                  SizedBox(height: 15),
                  Text('Por cada 1000 cambiados ahorras un promedio de S/60 frente a otras entidades financieras.'),
                  SizedBox(height: 15),
                  Container(
                  child: CupertinoButton(
                    child: Text("Registrate"),
                    onPressed: () {},
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orange[800],
                    padding: EdgeInsets.all(15),
                  ),
                  )
      ],
    ),
  );
}
Widget footer(BuildContext context){
      final count = ['Rextie','Servicios','Recursos','Soporte','Contacto'];
       columna(String titulos) { 
         final rextie = ['© 2019 Rextie. Todos los derechos reservados.','RUC 20601030013'];
         final servicios = ['Cambio de Moneda','Rextie Scan '];
         final recursos = ['Términos y Condiciones','Política de Privacidad','Libro de Reclamaciones','Blog','Sala de Prensa'];
         final soporte = ['Preguntas frecuentes'];
         final contacto = ['info@rextie.com','T. 01 700 3301','C. 963 896 793'];

            colum(List contenido){
              return Expanded(
              
              child: Container(
                margin: EdgeInsets.all(4),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Text('$titulos',style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start),
                    ),
                    ...contenido.map((e){
                      return Padding(
                      padding: const EdgeInsets.all(1),
                      child: Text('$e',style:TextStyle(fontSize: 10,color: Colors.grey),textAlign: TextAlign.start,)
                    );
                    })
                  ],
                ),
              ),
            );
            }

         switch (titulos) {
            case "Rextie":
              return colum(rextie);
            case "Servicios":
              return colum(servicios);
            case "Recursos":
              return colum(recursos);
            case "Soporte":
              return colum(soporte);
            case "Contacto":
              return colum(contacto);      
           default:
         }

      
       }
      return Container(
        height: 400,
        margin: EdgeInsets.all(10),
        color: Colors.white,
        child: Row(
          children: [
            ...count.map((e) {
              
               return columna(e);
            })
          ],
        ),
      );
    }

Widget slider(){
     var imageSlider = Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 182.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        dotColor: Color(0xFF6991C7).withOpacity(0.8),
        dotSize: 5.5,
        dotSpacing: 16.0,
        dotBgColor: Colors.transparent,
        showIndicator: true,
        overlayShadow: true,
        overlayShadowColors: Colors.white.withOpacity(0.9),
        overlayShadowSize: 0.9,
        images: [
          AssetImage("medios/baner1.png"),
          AssetImage("medios/baner12.png"),
          AssetImage("medios/baner2.png"),
          AssetImage("medios/baner3.png"),
          AssetImage("medios/baner4.png"),
        ],
      ),
    );
  return imageSlider;
}

Widget _form(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Text('Compra'),
                          Text('S/ 3.4480'),
                        ],
                      ),
                      onPressed: (){}
                      ),
                    RaisedButton(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Text('Compra'),
                          Text('S/ 3.4780'),
                        ],
                      ),
                      onPressed: (){}
                      )
                  ],
                ),
                SizedBox(height: 10.0),
                _inputOne(),
                SizedBox(height: 5.0),
                _inputTwo(),
                SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.monetization_on),
                    Text('Ahorro promedio ‍ S/ 67.00',style:TextStyle(color: Colors.blue),),
                    Icon(Icons.question_answer),
                  ],
                ),
                SizedBox(height: 5.0),
               _boton(context)
              ],
            ),
          ),
          
        ],
    );
  }

Widget _inputTwo() {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          //icon: Icon(Icons.lock_outline, color: Colors.deepPurple),
          prefixIcon: Icon(Icons.money_off),
          border:  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          hintText: '1000',
          labelText: 'Envias Dolares',
        ),
      ),
    );
  }
  Widget _inputOne() {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.money_off),
          border:  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          hintText: '1000',
          labelText: 'Envias Dolares',
        ),
      ),
    );
   
  }
   Widget _boton(BuildContext context){
      return RaisedButton(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  child: Text('Iniciar la operacion ->'),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 2.0,
                color: Color.fromRGBO(0, 50, 250, 1),
                textColor: Colors.white,
                onPressed: () {
                  
                },
              );
    }