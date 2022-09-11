import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var offers = ['Jio Postpaid', 'Jio prepaid'];

  var states = ['Odisha', 'Rajasthan', 'Maharastra', 'Kerala'];

  String dropdownValue = 'Jio Postpaid';
  String otherDropDownValue = 'Odisha';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF5f259e),
      ),
      title: 'task_three',
      home: Scaffold(
        backgroundColor: const Color(0xFFefe7f6),
        appBar: AppBar(
          title: const Text(
            'Mobile Recharge',
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.question_mark_outlined))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('assets/logo.png'),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: const [
                          Text(
                            'My Number',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text('${9438001234}')
                        ],
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton(
                        value: dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: offers.map((String offers) {
                          return DropdownMenuItem(
                            value: offers,
                            child: Text(offers),
                          );
                        }).toList(),
                        onChanged: (String? newOfferValue) {
                          setState(() {
                            dropdownValue = newOfferValue!;
                          });
                        },
                      ),
                      DropdownButton(
                        value: otherDropDownValue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: states.map((String states) {
                          return DropdownMenuItem(
                            value: states,
                            child: Text(states),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            otherDropDownValue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(color: Color(0xFFebeff2)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Expanded(
                                child: Text(
                              '\u{20B9}${10}',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )),
                            Expanded(
                                child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: const Center(
                                          child: Text(
                                        'CHANGE PLAN',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    )))
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Row(
                              children: const [
                                Text('Talktime:'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '\u{20B9}${7.47}',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                            const Expanded(child: Text('Data:')),
                            Expanded(
                                child: Row(
                              children: const [
                                Text('Validity:'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Unlimited',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                            'Talktime can also be used for international Services.')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                  width: double.infinity,
                  height: 70,
                  child: const Center(
                      child: Text(
                    'PROCEED TO PAY',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ))
          ],
        ),
      ),
    );
  }
}
