import 'package:flutter/material.dart';

class Nave_Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        // ajustando o tamanho da tela para os navegadores
        builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavbar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopNavbar();
      } else {
        return MobileNavbar();
      }
    });
  }
}

// definindo o tamanho da tela para despositivos desktop
class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1200),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //logo
            Container(
              child: Image.asset(
                'lib/assets/image/logo.jpeg',
                width: 100,
                height: 200,
              ),
            ),
            //atalhos navegação da tela
            Row(
              children: [
                //home
                Text(
                  'home',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),

                //contato
                Text(
                  'contato',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),

                //catalogo
                Text(
                  'catalogo',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //logo
        Container(
          child: Image.asset(
            'lib/assets/image/logo.jpeg',
            width: 40,
            height: 40,
          ),
        ),

        //atalhos navegação da tela
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //home
              Text(
                'home',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),

              //contato
              Text(
                'contato',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),

              //catalogo
              Text(
                'catalogo',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
