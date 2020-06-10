import 'package:flutter/material.dart';

void main() {
  runApp(MuestrarioApp());
}

class MuestrarioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Muestrario de Botones'),
              //backgroundColor: Colors.blue,
            ),
            body: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 4 / 3,
              children: <Widget>[
                Muestra(
                  child: RaisedButton(
                    child: Text('Puchurrame!'),
                    onPressed: () {
                      print('nice');
                    },
                  ),
                  text: 'RaisedButton Clásico',
                ),
                Muestra(
                  child: RaisedButton(
                    child: Text('Puchurrame!'),
                    onPressed: () {
                      print('nice');
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                  text: 'RaisedButton con color de fondo y texto blanco',
                ),
                Muestra(
                  child: RaisedButton(
                    child: Text('Puchurrame!'),

                    //color: Colors.blue,
                    //textColor: Colors.white,
                  ),
                  text: 'RaisedButton sin onPressed',
                ),
                
           
                Muestra(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text('Click on me'),
                    //color: Colors.green,
                  ),
                  text: 'FlatButton',
                ),




                Muestra(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text('Click on me'),
                    color: Colors.green,
                    textColor: Colors.white,
                  ),
                  text: 'FlatButton con color',
                ),



                Muestra(
                  child: OutlineButton(
                    onPressed: () {},
                    child: Text('Click on me'),
                    //color: Colors.green,
                  ),
                  text: 'OutlineButton sin colores',
                ),

                Muestra(
                  child: OutlineButton(
                    onPressed: () {},
                    child: Text('Click on me'),
                    shape: StadiumBorder(),
                    
                  ),
                  text: 'OutlineButton con  borde tipo "estadio"',
                ),

                Muestra(
                  child: OutlineButton.icon(
                    icon: Icon(Icons.add),
                    label: Text('Add Circle'),
                    onPressed: (){},
                    shape: StadiumBorder(),
                    highlightColor: Colors.green[50],
                    
                  ),
                  text: 'Outlines con Stadio, icono y decolorado',
                ),

               Muestra(
                  child: IconButton(
                    icon: Icon(Icons.panorama), 
                    onPressed: (){},
                    tooltip: 'Estos es el panorama doggy',
                    
                    ),
                    
                
                  text: 'Iconbotton con Tooltip',
                ), 

              Muestra(
                  child: BackButton(),
                    text: 'Dale Back',
                  ),

                Muestra(
                child: CloseButton(),
                  text: 'Close Botton',
                ),
                    
                
              Muestra(
                 text: 'FloatingActionButton',
                 child: 
                 FloatingActionButton(onPressed: (){},
                 child: Icon(Icons.phone_iphone),
                 ),
                  ),        
             

                

                
              ],
            )));
  }
}

class Muestra extends StatelessWidget {
  final Widget child;
  final String text;

  const Muestra({
    Key key,
    this.child,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              this.child,
              SizedBox(height: 10),
              Text(
                this.text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
