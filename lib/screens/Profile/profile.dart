import 'package:flutter/material.dart';
import '../../utils/styles.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userName;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        title: const Text("My Profile"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/gift_card_profile.jfif"),
                      fit: BoxFit.cover,
                      repeat: ImageRepeat.noRepeat,
                    ),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Container(
                      alignment: const Alignment(0.0, 2.5),
                      child: CircleAvatar(
                        radius: 60.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/profile_img.jfif'),
                              fit: BoxFit.cover,
                              repeat: ImageRepeat.noRepeat,
                            ),
                          ),
                        )
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  '$userName',
                  style: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                // StreamBuilder(builder: builder),
                const Text(
                  "Country",
                  //myCountry,
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      backgroundColor: Styles.primaryColor,
                    ),
                    child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                        child: Text(
                          "Pay With Points",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ))),
                const SizedBox(
                  height: 15,
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Movies Watched",
                                style: TextStyle(
                                    color: Colors.blueGrey.shade900,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              const Center(
                                  child: Text(
                                "4",
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w300),
                              ))
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Points",
                                style: TextStyle(
                                    color: Colors.blueGrey.shade900,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              const Text(
                                "2000",
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Styles.primaryColor,
                      ),
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 100.0,
                          maxHeight: 40.0,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Contact Us",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Styles.primaryColor,
                      ),
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 100.0,
                          maxHeight: 40.0,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Cinema Info",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Styles.primaryColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Container(
                          constraints: const BoxConstraints(
                            maxWidth: 400.0,
                            maxHeight: 40.0,
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Tickets Purchased",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Styles.primaryColor,
                      ),
                      child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 400.0,
                          maxHeight: 40.0,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Movies Watched",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// class Profile extends StatelessWidget {
//   const Profile({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               IntlPhoneField(
//                 decoration: const InputDecoration(
//                   labelText: 'Phone Number',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                   ),
//                 ),
//                 initialCountryCode: 'UG',
//                 onChanged: (phone) {
//                   if (kDebugMode) {
//                     print(phone.completeNumber);
//                   }
//                 },
//               ),
//               const TextField(
//                 textAlign: TextAlign.center,
//                 decoration: InputDecoration(
//                   hintText: "Enter Amount",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                   ),
//                 ),
//               ),
//               ElevatedButton.icon(
//                 onPressed: () {
//                   alertDialog(context);
//                 },
//                 icon: const Icon(Icons.payment),
//                 label: const Text(
//                   'Payment',
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.red,
//                   foregroundColor: Colors.black,
//                   minimumSize: const Size(200, 50),
//                   maximumSize: const Size(200, 50),
//                   elevation: 5,
//                   shape: const RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(25),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }

//Function which shows Alert Dialog
alertDialog(BuildContext context) {
  // This is the ok button
  Widget ok = ElevatedButton(
    child: const Text("Okay"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // show the alert dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Payment Successful"),
        content: const Text("Payment for (number of tickets) was successful."),
        icon: const Icon(
          Icons.check_circle,
          size: 70,
          color: Colors.green,
        ),
        actions: [
          ok,
        ],
        elevation: 5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
      );
    },
  );
}
