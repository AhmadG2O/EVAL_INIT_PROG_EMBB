import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'TP8.3 - Carte reutilisable.dart';
import 'TP8.4 - Constantes.dart';
import 'Evaluation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Evaluation Page 2.dart';


void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Evaluation',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Page_Quatre(),
    );
  }
}

class Page_Quatre extends StatefulWidget {
  @override
  _Page_Quatre createState() => _Page_Quatre();
}

class _Page_Quatre extends State<Page_Quatre> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/ciel.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  height: 200.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 400.0),
                  child: CarteReutilisable(
                    couleur: kCouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage('images/moi.png'),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return First();
                                  }),
                            );
                          },
                          //child : Icon(Icons.arrow_forward),
                        ),
                        Text(
                          'Ahmad GOOLAMGOOKHAN',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 300.0,
                  margin: EdgeInsets.fromLTRB(65.0, 190.0, 0.0, 0.0),
                  child: Text(
                    'Formation Professionnelle',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 130.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(0.0, 222.0, 0.0, 0.0),
                  child: CarteReutilisable(
                    couleur: kCouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new RichText(
                          text: new TextSpan(
                              children: [
                                new TextSpan(
                                  text: 'Cegep du Vieux Montréal',
                                  style: TextStyle(
                                    fontFamily: 'Pacifico',
                                    fontSize: 25.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: new TapGestureRecognizer()
                                    ..onTap = () {
                                      launch(
                                          'https://cestmontreal.ca/fr/institutions/cegep-vieux-montreal/?gclid=CjwKCAiAudD_BRBXEiwAudakXxdldI_QzocEf79nZnWAFe9xTdeBlNHiO1y5zKbgBc2sIGP2lm0ZghoCf8MQAvD_BwE');
                                    },
                                ),
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 130.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(0.0, 342.0, 0.0, 0.0),
                  child: CarteReutilisable(
                    couleur: kCouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new RichText(
                          text: new TextSpan(
                              children: [
                                new TextSpan(
                                  text: 'Age Impulse',
                                  style: TextStyle(
                                    fontFamily: 'Pacifico',
                                    fontSize: 25.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: new TapGestureRecognizer()
                                    ..onTap = () {
                                      launch(
                                          'http://age-impulse.com/');
                                    },
                                ),
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 130.0,
                  width: 400.0,
                  margin: EdgeInsets.fromLTRB(0.0, 462.0, 0.0, 0.0),
                  child: CarteReutilisable(
                    couleur: kCouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new RichText(
                          text: new TextSpan(
                              children: [
                                new TextSpan(
                                  text: 'Préfecture de Police',
                                  style: TextStyle(
                                    fontFamily: 'Pacifico',
                                    fontSize: 25.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: new TapGestureRecognizer()
                                    ..onTap = () {
                                      launch(
                                          'https://www.prefecturedepolice.interieur.gouv.fr/');
                                    },
                                ),
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  width: 190.0,
                  margin: EdgeInsets.fromLTRB(100.0, 600.0, 0.0, 0.0),
                  child: FloatingActionButton(
                      child: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context){
                                return Page_deux();
                              }
                          ),
                        );
                      }
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
