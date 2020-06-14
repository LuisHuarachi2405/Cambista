import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../web/HomePageWeb.dart';


class HomePageWeb extends StatelessWidget {
   HomePageWeb({Key key}) : super(key: key);
  
  CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(85),
              child: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            margin: EdgeInsets.only(top: 30),
            child: Text('CAMBISTA',style: TextStyle(color: Colors.blue),)),
          actions: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child:  Container(
              
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
            ),
            SizedBox(width: 10,),
             Container(
              
              margin: EdgeInsets.only(right: 100,top: 20),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
             Container(
               color: Colors.white,
               width: _screenSize.width ,
               height: _screenSize.height * 0.9,
               child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 60,left: 80),
                      child: ClipRRect(
                        child:Image.asset('welcome.png')

                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          padding: EdgeInsets.only(top: 30),
                          child: Text('Cambia dolares desde tu casa al mejor tipo de cambio',style: TextStyle(
                            fontSize: 40, color: Color.fromRGBO(0,50,255,1)
                          ),), 
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: 300,
                          child: Text('Tu tambien puedes pagar tu tarjeta  de credito con nosotros',style: TextStyle(
                            fontSize: 20
                          ),), 
                        ),
                      ],
                    ),
                    SizedBox(width: 60,),
                    Container(
                      child:_form(context)
                          
                    )

                  ],
                ),
             ),
             
             Container(
               padding: EdgeInsets.all(15),
               width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.9,
               child:Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 
                 children: [
                   Text('Miles de usuarios felices',style: TextStyle(color: Colors.black,fontSize: 30),),
                   SizedBox(height: 15),
                   CarouselSlider(
                    options:CarouselOptions(
                      autoPlayInterval: Duration(seconds: 2),
                      height: MediaQuery.of(context).size.height * 0.5,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                    ),
                    items: [1,2,3,4,5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                              color: Colors.transparent
                            ),
                            child: Image.asset('testimonio.png')
                          );
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 15),
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
                ),
                    ],
               ),
              
             ),
             Container(
            
               padding: EdgeInsets.symmetric(vertical: 25),
               child:  Column(
                 children: [
                   Center(
                         child: Text('¿Porque usar Rextie?'),
                       ),
                       SizedBox(height: 80,),
                      _imageText(context),
                      SizedBox(height: 100,),
                      _textImage(context),
                      SizedBox(height: 100,),
                      _imageText(context)
                 ],
               ),
                   

             ),
             rextieSocios(context),
             descarga(context)
            
            
          ],
        ),
      )
    );
  }

  Widget _imageText(BuildContext context){
     return Container(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,

                     children: [
                       Image.asset('transfer.png',
                       width: MediaQuery.of(context).size.width * 0.4 ,
                       height: MediaQuery.of(context).size.height * 0.4,
                       ),
                       Container(
                         width: MediaQuery.of(context).size.width * 0.25 ,
                         height: MediaQuery.of(context).size.height * 0.4,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Mejor tipo de cambio',style: TextStyle(color: Color.fromRGBO(0,50,255,1),fontSize: 25),),
                             Text('Porque nos preocupamos por tu ahorro',style: TextStyle(color: Color.fromRGBO(0,200,255,1),fontSize: 15),),
                             SizedBox(height: 15,),
                             Text('En Rextie manejamos el mejor tipo de cambio, a comparación de otras entidades financieras.'),
                           ],
                         ),
                       )
                       

                     ],
                   )
                 ],
               ),
             );
  }
}

Widget _textImage(BuildContext context){
     return Container(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                        Container(
                         width: MediaQuery.of(context).size.width * 0.25 ,
                         height: MediaQuery.of(context).size.height * 0.4,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Mejor tipo de cambio',style: TextStyle(color: Color.fromRGBO(0,50,255,1),fontSize: 25),),
                             Text('Porque nos preocupamos por tu ahorro',style: TextStyle(color: Color.fromRGBO(0,200,255,1),fontSize: 15),),
                             SizedBox(height: 15,),
                             Text('En Rextie manejamos el mejor tipo de cambio, a comparación de otras entidades financieras.'),
                           ],
                         ),
                       ),
                       Image.asset('transfer.png',
                       width: MediaQuery.of(context).size.width * 0.4 ,
                       height: MediaQuery.of(context).size.height * 0.4,
                       ),
                      
                       

                     ],
                   )
                 ],
               ),
             );
  }

  Widget _form(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
        children: <Widget>[
          Container(
            width: size.width * 0.27,
            height: size.height * 0.7 ,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.only(top: 50.0),
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
                      EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
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

    Widget rextieSocios(BuildContext context){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.62,
        color: Color.fromRGBO(0, 50, 250, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.6,
              margin:EdgeInsets.only(left:40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Rextie Socios',style: TextStyle(fontSize: 35,color: Colors.white),),
                  SizedBox(height: 50,),
                  Text('Solucion 100% digital de',style:TextStyle(fontSize: 40,color: Colors.white),),
                  Text('cambio de dolares corporativo',style: TextStyle(fontSize: 40,color: Color.fromRGBO(0,200,255, 1)),),
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
                  
                ],
              ),
            ),
            Image.asset('group.png',
            width: MediaQuery.of(context).size.width * 0.55 ,
            height: MediaQuery.of(context).size.height * 0.55
            )
          ],
        ),

      );
    }

    Widget descarga(BuildContext context){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.62,
        color: Color.fromRGBO(0, 50, 250, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              margin:EdgeInsets.only(left:40),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Text('Cambia dolares desde',style:TextStyle(fontSize: 35,color: Colors.white),),
                  Text('donde estes',style: TextStyle(fontSize: 40,color: Color.fromRGBO(0,200,255, 1)),),
                  SizedBox(height: 15,),
                  Text('Estamos en todas las plataformas digitales,',style: TextStyle(fontSize: 20,color: Colors.white),),
                  Text('¿Qué esperas para descargar nuestra app?',style: TextStyle(fontSize: 20,color: Colors.white),),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Image.asset('appStore.png',
                        width: MediaQuery.of(context).size.width * 0.1 ,
                        height: MediaQuery.of(context).size.height * 0.1
                        ),
                      Image.asset('playStore.png',
                        width: MediaQuery.of(context).size.width * 0.12,
                        height: MediaQuery.of(context).size.height * 0.12
                        )
                    ],
                  )
                  
                ],
              ),
            ),
            Image.asset('phone.png',
            width: MediaQuery.of(context).size.width * 0.4 ,
            height: MediaQuery.of(context).size.height * 0.4
            )
          ],
        ),

      );
    }






