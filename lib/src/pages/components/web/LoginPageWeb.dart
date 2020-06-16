import 'package:flutter/material.dart';

class LoginPageMovil extends StatelessWidget {
  const LoginPageMovil({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60,),
            _form(context),

          ],
        ),
      ),
    );
  }
}
Widget _form(BuildContext context) {
  final size = MediaQuery.of(context).size;

  return Column(
    children: <Widget>[
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.account_circle,size: 60,),
            SizedBox(height: 10,),
            Text('Bienvenidos a Rextie',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Ingresa y cambia dolares de manera rapida y segura',style: TextStyle(fontSize: 15,color: Colors.grey),),
            SizedBox(height: 10.0),
            _inputOne(),
            SizedBox(height: 5.0),
            _inputTwo(),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value){
                      },
                    ),
                    Text('Recordarme',style: TextStyle(color: Colors.grey),)
                  ],
                ),

                InkWell(
                  child: Text('Mostrar contraseña',style:TextStyle(color: Color.fromRGBO(0, 50, 250, 1)),),
                ),
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
        suffixIcon: Icon(Icons.security),
        border:  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        labelText: 'Contraseña',
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
        suffixIcon:  Icon(Icons.message),
        border:  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        labelText: 'Correo electronico',
      ),
    ),
  );

}
Widget _boton(BuildContext context){
  return RaisedButton(
    child: Container(
      padding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Text('Ingresar'),
    ),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)),
    elevation: 2.0,
    color: Color.fromRGBO(0, 50, 250, 1),
    textColor: Colors.white,
    onPressed: () {

    },
  );
}