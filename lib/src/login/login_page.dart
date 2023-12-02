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
        child: Stack( //stackea sus elementos contenidos uno encima de otro
          children:[
            //el guion bajo antes indica que el modificador de acceso es privado
            Positioned(
              left: -100,
              top:  -80,
              child: _circleLogin(),
            ),
            Positioned(
              left: 25,
              top: 55,
              child: _textLogin(),
            ),
            Column(
              children: [
                _imageBanner(),            
                _textFieldEmail(),
                _textFieldPassword(),
                _buttonLogin(),
                _rowTextDontHaveAccount(),
              ],
            ),
          ],
        ),
      )     
    );
  }

  Widget _textLogin(){
    return Container(
      child: Text(
        'LOGIN',
        style: TextStyle(
          color: MyColors.secundaryColor,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _circleLogin(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: MyColors.primaryColor
      ),
      height: 230,
      width: 240,
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
//hola mundo
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
