import 'package:flutter/material.dart';
import 'package:marsey_nails/size_config.dart';

import '../widgets/content_tuto.dart';
import '../widgets/default_button_widget.dart';

class BodyTutoWidget extends StatefulWidget {
  @override
  _BodyTutoWidgetState createState() => _BodyTutoWidgetState();
}

class _BodyTutoWidgetState extends State<BodyTutoWidget> {
  int currentPage = 0;
  List<Map<String, String>> tutoDatos = [
    {"text": "Queremos consentirte", "image": "assets/images/online_shop.png"},
    {
      "text": "Observa nuestros servicios",
      "image": "assets/images/online_shop.png"
    },
    {"text": "Reserva tu cita", "image": "assets/images/online_shop.png"},
    {
      "text": "Disfruta de tu servicio desde la comodidad de tu hogar",
      "image": "assets/images/online_shop.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: tutoDatos.length,
                    itemBuilder: (context, index) => TutoContent(
                          image: tutoDatos[index]["image"],
                          text: tutoDatos[index]["text"],
                        )),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: [
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(tutoDatos.length,
                            (index) => buildPuntitos(index: index)),
                      ),
                      Spacer(flex: 1,),
                      DefaultButton(
                        text: 'Continuar',
                        press: (){
                           Navigator.pushNamed(context, 'inicio');
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildPuntitos({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.purple[600] : Colors.purple[100],
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}


