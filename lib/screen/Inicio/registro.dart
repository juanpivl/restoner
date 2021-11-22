import 'package:flutter/material.dart';
import 'package:restoner/constants.dart';

class Registro extends StatefulWidget {
  @override
  _Registro createState() => _Registro();
}

class _Registro extends State<Registro> {
  int currentStep = 0;

  final numberPhone = TextEditingController();
  final numberCode = TextEditingController();
  final name = TextEditingController();
  final lastName = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            padding: EdgeInsets.only(left: 20),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          leadingWidth: 40,
          backgroundColor: Colors.white,
          title: Text(
            'Registro',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: Theme(
          data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(primary: kPrimaryColorPink)),
          child: Stepper(
            type: StepperType.horizontal,
            steps: getSteps(),
            currentStep: currentStep,
            onStepContinue: () {
              if (currentStep == 2) {
                print('completed');
                Navigator.pushNamed(context, NegocioCRoute);
                //TODO: implementar el registro
              } else {
                setState(() => currentStep = currentStep + 1);
              }
            },
            onStepCancel: currentStep == 0
                ? () {
                    Navigator.pop(context);
                  }
                : () {
                    setState(() => currentStep = currentStep - 1);
                  },
            controlsBuilder: (context, {onStepContinue, onStepCancel}) =>
                Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(children: [
                Expanded(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: kPrimaryColorPink,
                    onPressed: onStepContinue,
                    child: Text(
                      'Continuar',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(width: 20),
              ]),
            ),
          ),
        ),
      );

  List<Step> getSteps() => [
        Step(
          isActive: currentStep >= 0,
          title: Text(""),
          content: _solicitarNum(),
        ),
        Step(
          isActive: currentStep >= 1,
          title: Text(""),
          content: _ingresarCodigo(),
        ),
        Step(
            isActive: currentStep >= 2,
            title: Text(""),
            content: _nombreContrasena()),
      ];

  Column _nombreContrasena() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        TextFormField(
          controller: name,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            labelText: 'Nombre ',
            labelStyle: TextStyle(fontSize: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          controller: lastName,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            labelText: 'Apellido ',
            labelStyle: TextStyle(fontSize: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 30,
        ),
        TextFormField(
          controller: password,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'Contraseña',
            labelStyle: TextStyle(fontSize: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          obscureText: _obscureText,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 30,
        ),
        TextFormField(
          controller: confirmPassword,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'Repetir contraseña',
            labelStyle: TextStyle(fontSize: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          obscureText: _obscureText,
          style: TextStyle(fontSize: 20),
        ),
        Container(
          margin: EdgeInsets.only(left: 190),
          child: new FlatButton(
            onPressed: _toggle,
            child: new Text(
                _obscureText ? "Mostrar Contraseña" : "Esconder Contraseña"),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Column _ingresarCodigo() {
    return Column(
      children: [
        Container(
          width: 400,
          height: 50,
          child: Center(
            child: TextField(
              controller: numberCode,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: '4 9 5 6 7 2',
                hintStyle: TextStyle(fontSize: 15),
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
            child: Container(
                child: Text(
          "Reenviar código",
          style: TextStyle(
              color: kPrimaryColorPink,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ))),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            "Ingrese el código enviado por SMS al" +
                " número " +
                numberPhone.text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }

  Column _solicitarNum() {
    return Column(
      children: [
        Container(
          width: 400,
          height: 50,
          child: Center(
            child: TextField(
              controller: numberPhone,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.flag),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Phone Number',
                hintStyle: TextStyle(fontSize: 15),
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            "Al continuar, recibirá un codigo por mensaje para su validación",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
