import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0F7FA),
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'Events',
          style: TextStyle(
            color: Colors.brown,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF1A237E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 10, 10, 5),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color(0xFF1A237E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                FllipCardEvent(
                  left: 80,
                  right: 10,
                  top: 10,
                  bottom: 10,
                  img: 'images/pulzion.jpg',
                text: 'Pulzion is the annual flagship event organized by PICT '
                    'ACM Student Chapter (PASC). Pulzion consists of '
                    'multiple events in technical as well as non-technical'
                    ' domains including coding competitions, mock placement '
                    'interviews, business management-based events, '
                    'design and development based contests and quizzing events.'
                    ),
                FllipCardEvent(
                    left: 10,
                    right: 70,
                    top: 10,
                    bottom: 10,
                    text: 'Encouraging gender equality and women empowerment, '
                    'PASC-W promotes full engagement of women in the technical domain.'
                    ' Through its collaborations and initiatives, '
                    'PASC-W provides a large range of services to all ACM '
                    'members along with pushing the advancement of contribution of'
                    ' women in the field of computing',
                    img: 'images/radiance.jpg'),
                FllipCardEvent(text: 'PICT ACM Student Chapter conducted a 16 hr. '
                    'hackathon on 24 February 2019. The hackathon was conducted '
                    'in 2 parts. The first round involved the participants to'
                    ' submit a presentation which detailed their idea and'
                    ' implementation in some depth. 75+ teams registered for '
                    'the first round. 12 teams nudged the competition by a whisker'
                    ' and were selected for the final round.',
                    img: 'images/Pasckathon.jpg',
                  left: 80,
                  right: 10,
                  top: 10,
                  bottom: 10,
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FllipCardEvent extends StatelessWidget {
  late String text;
  late String img;
  late double left=0.0;
  late double right=0.0;
  late double top=0.0;
  late double bottom=0.0;
  FllipCardEvent({required this.text,required this.img,required this.left,required this.right,
  required this.bottom,required this.top});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
        front: Padding(
          padding: EdgeInsets.fromLTRB(left, top, right, bottom),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 6,
                  blurRadius: 15,
                  offset: Offset(0, 3),
                )
              ],
              image: DecorationImage(
                image: AssetImage('$img'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        back: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 6,
                  blurRadius: 15,
                  offset: Offset(0, 3),
                )
              ],
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF1A237E),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '$text',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
