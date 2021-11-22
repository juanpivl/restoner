import 'package:flutter/material.dart';
import 'package:restoner/constants.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(primary: kPrimaryColorPink)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Logo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.flag),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Phone number",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: "Contraseña"),
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image(
                    image: AssetImage('assets/images/ingresar.png'),
                    height: 45,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 40,
                  child: RaisedButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    color: Colors.white,
                    child: Text(
                      "Recuperar contraseña",
                      style: TextStyle(color: kPrimaryColorPink),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 150,
                  height: 40,
                  child: RaisedButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {},
                    color: Colors.white,
                    child: Text(
                      "Registrarse",
                      style: TextStyle(
                          color: kPrimaryColorPink,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Continuar implica que usted ha leido y aceptado los ",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      Text(
                          "Términos y condiciones, Politica de privacidad", //TODO: terminos y condiciones
                          style: TextStyle(
                              color: kPrimaryColorPink,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
