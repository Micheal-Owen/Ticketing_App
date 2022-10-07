import 'package:cinemax/screens/Seats_and_ticketing/ticket_confimation.dart';
import 'package:cinemax/screens/Seats_and_ticketing/seat_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BarItemPage extends StatefulWidget {
  const BarItemPage({super.key});

  @override
  State<BarItemPage> createState() => _BarItemPageState();
}

class _BarItemPageState extends State<BarItemPage> {
  int selectedIndex = -1;
  List alpha = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(color: Colors.black87),
          child: Stack(
            children: [
              // this is the white cinema projectoro  screen
              Positioned(
                  left: 40,
                  top: 80,
                  right: 40,
                  child: Container(
                    width: 300,
                    height: 5,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          offset: Offset.zero,
                          spreadRadius: 2,
                          blurStyle: BlurStyle.normal,
                          color: Colors.white)
                    ], color: Colors.white70, shape: BoxShape.rectangle),
                  )),
              Positioned(
                  left: 30,
                  right: 30,
                  top: 120,
                  child: Container(
                      width: 400,
                      height: 500,
                      child: Container(
                        height: 500,
                        width: double.maxFinite,
                        child: Wrap(
                            spacing: 2,
                            children: List.generate(77, (index) {
                              return Container(
                                  padding: const EdgeInsets.all(0.1),
                                  child:
                                    Seat(index: index)
                                  );
                            })),
                      ))),
              Positioned(
                  left: 10,
                  top: 120,
                  child: SizedBox(
                    height: 540,
                    width: 20,
                    child: Column(
                      children: List.generate(11, (index) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 16, top: 15),
                          child: Text(
                            alpha[index],
                            style: const TextStyle(
                                color: Color.fromARGB(248, 255, 255, 255)),
                          ),
                        );
                      }),
                    ),
                  )),
              // Positioned(
              //   right: 30,
              //   left: 30,
              //   top: 680,
              //   child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              //     Container(
              //         padding: const EdgeInsets.only(left: 100),
              //         height: 50,
              //         width: 200,
              //         child: Consumer<SeatNumberModel>(
              //             builder: (context, number, child) {
              //           return RichText(
              //             text: TextSpan(
              //                 style: TextStyle(
              //                     color: Color.fromARGB(253, 255, 255, 255)),
              //                 children: <TextSpan>[
              //                   TextSpan(text: 'SEAT:'),
              //                   TextSpan(
              //                       text: ' ${number.seatNumber}',
              //                       style: TextStyle(
              //                           fontWeight: FontWeight.bold,
              //                           fontSize: 18,
              //                           color: Colors.orange))
              //                 ]),
              //           );
              //         })),
              //   ]),
              // ),
              Positioned(
                right: 30,
                left: 30,
                top: 750,
                child: Center(
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    height: 50,
                    width: 400,
                    child: ElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => TicketView()))),
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(10),
                            backgroundColor: Colors.orange),
                        child: const Text("BOOK SEAT")),
                  ),
                ),
              ),
              Positioned(
                  top: 660,
                  right: 300,
                  child: Container(
                    height: 80,
                    width: 80,
                    // color: Colors.red,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 9,
                              width: 9,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: Colors.orange),
                            ),
                            Expanded(child: Container()),
                            const Text('Selected',
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                        Expanded(
                          flex: 0,
                          child: Container(),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 9,
                                width: 9,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: Colors.grey),
                              ),
                              Expanded(child: Container()),
                              const Text('Available',
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 9,
                                width: 9,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: Colors.white),
                              ),
                              Expanded(flex: 1, child: Container()),
                              Container(
                                margin: const EdgeInsets.only(right: 19),
                                child: const Text('Taken',
                                    style: TextStyle(color: Colors.white)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}
