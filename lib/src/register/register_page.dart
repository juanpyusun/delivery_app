import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: -100,
              top: -80,
              child: _circleRegister(),
            ),
            Positioned(
              left: 0,
              top: 55,
              child: _iconBack(),
            ),
            Positioned(
              left: 35,
              top: 70,
              child: _textRegister(),
            ),
          ],          
        ),
      ),
    );
  }

  Widget _textRegister(){
      return Container(
        child: Text(
          'REGISTER',
          style: TextStyle(
            color: MyColors.secundaryColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  }

  Widget _circleRegister(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: MyColors.primaryColor
      ),    
      height: 230,
      width: 240,
    );
  }

  Widget _iconBack(){
    return IconButton(
      onPressed: (){},
      icon: Icon(
        Icons.arrow_back_ios,
        color: MyColors.secundaryColor
      )
    );
  }
}
