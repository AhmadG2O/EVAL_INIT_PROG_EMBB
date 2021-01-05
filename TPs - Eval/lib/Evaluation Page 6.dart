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
      home: Page_Six(),
    );
  }
}

class Page_Six extends StatefulWidget {
  @override
  _Page_Six createState() => _Page_Six();
}

class _Page_Six extends State<Page_Six> {
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
                  margin: EdgeInsets.fromLTRB(155.0, 190.0, 0.0, 0.0),
                  child: Text(
                    'Autres',
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
                          text: new TextSpan(children: [
                            new TextSpan(
                              text: "San't Egidio",
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 25.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  launch(
                                      'https://www.santegidio.org/pageID/30008/langID/fr/LA-COMMUNAUT%C3%89.html');
                                },
                            ),
                          ]),
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
                          text: new TextSpan(children: [
                            new TextSpan(
                              text: 'Gilet Bleu',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 25.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  launch(
                                      'https://www.service-civique.gouv.fr/le-service-civique-par-ceux-qui-le-font/les-gilets-bleus');
                                },
                            ),
                          ]),
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
                          text: new TextSpan(children: [
                            new TextSpan(
                              text: 'Cinéma',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 25.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  launch(
                                      'https://www.cinemaspathegaumont.com/');
                                },
                            ),
                          ]),
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
                          MaterialPageRoute(builder: (BuildContext context) {
                            return Page_deux();
                          }),
                        );
                      }),
                ),
                Container(
                  height: 50.0,
                  width: 190.0,
                  margin: EdgeInsets.fromLTRB(0.0, 260.0, 0.0, 0.0),
                  child: Image.asset("images/SE.jpg"),
                ),
                Container(
                  height: 50.0,
                  width: 190.0,
                  margin: EdgeInsets.fromLTRB(0.0, 380.0, 0.0, 0.0),
                  child: Image.asset("images/giletbleu.jpg"),
                ),
                Container(
                  height: 50.0,
                  width: 190.0,
                  margin: EdgeInsets.fromLTRB(0.0, 500.0, 0.0, 0.0),
                  child: Image.asset("images/cinema.jpg"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
