// import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  num number1 = 0;
  num number2 = 0;
  num result = 0;
  String opr = " ";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Calc App",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.calculate_outlined,
              size: 60,
              color: Colors.white,
            ),
            SizedBox(width: 100),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 370,
                height: 190,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 2, 247, 10),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(70)),
                    color: Colors.black,
                  ),
                  alignment: Alignment.center,
                  width: 270,
                  height: 160,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 80,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color.fromARGB(255, 2, 247, 10),
                          ),

                          //the first number
                          child: Text(
                            "$number1",
                            style: const TextStyle(
                                fontSize: 50, color: Colors.black),
                          ),
                        ),
                        const SizedBox(width: 3),
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 80,
                          child: Text(
                            // ignore: unnecessary_string_interpolations
                            "$opr",
                            style: const TextStyle(
                                fontSize: 50, color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 3),
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 80,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color.fromARGB(255, 2, 247, 10),
                          ),

                          //the second number
                          child: Text(
                            "$number2",
                            style: const TextStyle(
                                fontSize: 50, color: Colors.black),
                          ),
                        ),
                        const SizedBox(width: 3),
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 80,
                          child: const Text(
                            " = ",
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                        ),

                        //the result
                        const SizedBox(width: 3),
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 80,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color.fromARGB(255, 2, 247, 10),
                          ),
                          child: Text(
                            "$result",
                            style: const TextStyle(
                                fontSize: 50, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        "The first Number",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                number1++;
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              iconColor: const Color.fromARGB(255, 2, 247, 10),
                              shape: const CircleBorder(),
                            ),
                            child: const Icon(Icons.add),
                          ),
                          const SizedBox(width: 5),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                number1--;
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              iconColor: const Color.fromARGB(255, 2, 247, 10),
                              shape: const CircleBorder(),
                            ),
                            child: const Icon(Icons.remove),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 100),
                  Column(
                    children: [
                      const Text(
                        "The second Number",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                number2++;
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              iconColor: const Color.fromARGB(255, 2, 247, 10),
                              shape: const CircleBorder(),
                            ),
                            child:  const Icon(Icons.add),
                          ),
                          const SizedBox(width: 5),
                          OutlinedButton(
                            onPressed: () {
                              setState(() {
                                number2--;
                              });
                            },
                            style: OutlinedButton.styleFrom(
                              iconColor: const Color.fromARGB(255, 2, 247, 10),
                              shape: const CircleBorder(),
                            ),
                            child: const Icon(Icons.remove),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = number1 + number2;
                        opr = "+";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 10,
                      shadowColor: const Color.fromARGB(255, 2, 247, 10),
                    ),
                    child: const Text(
                      "+ Addition",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 80),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        opr = "-";
                        result = number1 - number2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 10,
                      shadowColor: const Color.fromARGB(255, 2, 247, 10),
                    ),
                    child: const Text(
                      "- Subtraction",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        opr = "*";
                        result = number1 * number2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 10,
                      shadowColor: const Color.fromARGB(255, 2, 247, 10),
                    ),
                    child: const Text(
                      "* Multiplication",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 65),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = number1 / number2;
                        opr = "/";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 10,
                      shadowColor: const Color.fromARGB(255, 2, 247, 10),
                    ),
                    child: const Text(
                      "/ Division",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        opr = "^";
                        result = pow(number1, number2);
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 10,
                      shadowColor: const Color.fromARGB(255, 2, 247, 10),
                    ),
                    child: const Text(
                      "^ Exponentiation",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 60),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        opr = "%";
                        result = number1 % number2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 10,
                      shadowColor: const Color.fromARGB(255, 2, 247, 10),
                    ),
                    child: const Text(
                      "% Modulus",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundColor: const Color.fromARGB(255, 2, 247, 10),
                backgroundImage: const NetworkImage(
                    "https://i0.wp.com/images.squarespace-cdn.com/content/v1/5ff36df450339566e9be4034/1611603249028-K1TG0X50TD49Q5U5YISK/ezgif-5-486e88066809.gif?ssl=1"),
                child: Text(
                  "Result All $result",
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
