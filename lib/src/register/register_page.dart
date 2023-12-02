// ignore_for_file: prefer_const_constructor
import 'package:delivery_app/src/utils/my_colors.dart';
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
            Container(
              margin: EdgeInsets.only(top: 150),
              width: double.infinity,
              child: Column(
                children: [
                  _imageUser(),
                  SizedBox(height: 30),
                  _textFieldEmail(),
                  _textFieldFirstName(),
                  _textFieldLastName(),
                  _textFieldPhone(),
                  _textFieldPassword(),
                  _textFieldConfirmPassword(),
                  _buttonRegister(),
                ],
              ),
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

  Widget _imageUser(){
    return CircleAvatar(
      backgroundColor: Color.fromARGB(87, 158, 158, 158),
      backgroundImage: AssetImage('assets/img/user_profile_2.png'),
      radius: 60,
    );    
  }

  Widget _textFieldEmail(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: MyColors.primaryOpacityColor
      ),
      margin: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColor
          ),
          hintText: 'Correo Electronico',
          prefixIcon: Icon(
            Icons.mail,
            color: MyColors.primaryColor            
          ),
        ),
      ),
    );
  }
  
  Widget _textFieldFirstName(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: MyColors.primaryOpacityColor
      ),
      margin: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColor
          ),
          hintText: 'Nombres',
          prefixIcon: Icon(
            Icons.person_2,
            color: MyColors.primaryColor            
          ),
        ),
      ),
    );
  }
  
  Widget _textFieldLastName(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: MyColors.primaryOpacityColor
      ),
      margin: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColor
          ),
          hintText: 'Apellidos',
          prefixIcon: Icon(
            Icons.person_2_outlined,
            color: MyColors.primaryColor            
          ),
        ),
      ),
    );
  }
  
  Widget _textFieldPhone(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: MyColors.primaryOpacityColor
      ),
      margin: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColor
          ),
          hintText: 'Telefono',
          prefixIcon: Icon(
            Icons.phone,
            color: MyColors.primaryColor            
          ),
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
      margin: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColor
          ),
          hintText: 'Contraseña',
          prefixIcon: Icon(
            Icons.lock,
            color: MyColors.primaryColor            
          ),
        ),
      ),
    );
  }
  
  Widget _textFieldConfirmPassword(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: MyColors.primaryOpacityColor
      ),
      margin: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColor
          ),
          hintText: 'Confirmar Contraseña',
          prefixIcon: Icon(
            Icons.lock,
            color: MyColors.primaryColor            
          ),
        ),
      ),
    );
  }
  
  Widget _buttonRegister(){
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
        child: Text('Crear Cuenta')
      ),
    );
  }
}
