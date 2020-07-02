import 'package:flutter/material.dart';
import 'package:uiux_texfield/text_formfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Crear Cuenta",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              MyTextFormField(
                controller: TextEditingController()..text = 'Miguel Angel',
                hintText: 'tu nombre',
                labelText: 'Nombre',
              ),
              MyTextFormField(
                controller: TextEditingController()
                  ..text = 'miguelhangelh@hotmail.com',
                hintText: 'Tu correo electronico',
                labelText: 'Email',
              ),
              MyTextFormField(
                controller: TextEditingController()..text = 'Miguel Angel',
                isPassword: true,
                hintText: 'tu contraseña',
                labelText: 'Contraseña',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.blueAccent,
                    onPressed: () {},
                    child: Text(
                      'Registrarme',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
