// ignore_for_file: prefer_const_constructor
// import 'package:delivery_app/src/utils/my_colors.dart';
import 'package:delivery_app/src/utils/my_colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( //scaffold: toda la pantalla del celular
      body: Container(
        width: double.infinity,
        child: Column(
          children:[
            //el guion bajo antes indica que el modificador de acceso es privado
            _imageBanner(),            
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLogin(),
            _rowTextDontHaveAccount(),
          ],
        ),
      )
      /*
      appBar: AppBar(
        title: Text('Delivery App')
      ),      
      body: Column(
        children: [
          SizedBox(height: 20),
          Text('Nombre'),
          Container(
            //margin: EdgeInsets.all(20), genera todas las margenes 
            //margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10), genera margenes por pares
            margin: EdgeInsets.only(bottom: 0, left: 30, right: 30, top:40),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Escribe tu nombre',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: (){}, //funcion vacia (){}
            child: Text('Continuar'),
          ),
        ],
      ),
      
      body: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween, separacion maxima
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //espacio con ambos bordes
        //children va de ultimo
        children: [
          Text('Holis'),
          //SizedBox(width: 30), se reemplaza con la propiedad mainAxisAligment
          Text('Mundo'),
        ],
      ),
      
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              //color: Colors.lime,
              color: MyColors.primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(80))
            ),
            height: 150,
            width: 150,
          ),
          Container(
            margin: EdgeInsets.only(left: 60, top: 60),
            child: Text('Login')
          ),
        ],
      ),
    */
    );
  }

  Widget _imageBanner(){
    return Container(
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.25,
        top: 100,
      ),
      child: Image.asset(
        'assets/img/delivery.png',
        height: 200,
        width: 200,
      ),
    );
  }

  Widget _textFieldEmail(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: MyColors.primaryOpacityColor
      ),
      margin: EdgeInsets.symmetric(horizontal:50, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding:  EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryDarkColor
          ),
          hintText: 'Email',
          prefixIcon: Icon(
            Icons.mail,
            color: MyColors.primaryColor            
          )
        ),
      ),
    );
  }

  Widget _textFieldPassword(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: MyColors.primaryOpacityColor
      ),
      margin: EdgeInsets.symmetric(horizontal:50, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding:  EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryDarkColor
          ),
          hintText: 'Password',
          prefixIcon: Icon(
            Icons.remove_red_eye,
            color: MyColors.primaryColor            
          )
        ),
      ),
    );
  }

  Widget _buttonLogin(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.primaryColor,
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          )
        ),
        child: Text('Continue')
      ),
    );
  }

  Widget _rowTextDontHaveAccount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'You don\'t have an account',
          style: TextStyle(
            color: MyColors.primaryColor
          ),
        ),
        SizedBox(width: 15),
        Text(
          'Sign in!',
          style: TextStyle(
            color: MyColors.primaryColor,
            fontWeight: FontWeight.bold
          )
        ),
      ],
    );
  }

}