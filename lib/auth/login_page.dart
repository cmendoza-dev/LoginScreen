import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var signUpImages = ["f.png", "t.png", "g.png"];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            // Background Image
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: const AssetImage('assets/image/fondo.jpeg'),
                    colorFilter: ColorFilter.mode(
                      const Color.fromRGBO(99, 48, 183, 1).withOpacity(0.6),
                      BlendMode.multiply,
                    ),
                  ),
                ),
              ),
            ),

            // Icon Widgets
            const Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 100,
                  ),
                  Text(
                    "GO MAP",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            // Introduction Section
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 250 - 20,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          "Welcome",
                          style: TextStyle(
                              color: Color.fromRGBO(99, 48, 183, 1),
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text("Please login with your information",
                            style: TextStyle(color: Colors.grey)),
                        const SizedBox(height: 30),
                        TextFormField(
                          autofocus: true,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Email address',
                            suffixIcon: Icon(Icons.done),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(99, 48, 183, 1)),
                            ),
                            labelText: 'Password',
                            suffixIcon: Icon(Icons.remove_red_eye),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: true,
                                  tristate: false,
                                  onChanged: (value) {},
                                  activeColor: Color.fromRGBO(99, 48, 183, 1),
                                ),
                                Text('Remember me'),
                              ],
                            ),
                            const Text(
                              "I forgot my password",
                              style: TextStyle(
                                color: Color.fromRGBO(180, 180, 180, 1),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Container(
                              width: 340,
                              height: 60,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.7),
                                      blurRadius: 16,
                                      offset: Offset(
                                          0, 16), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(99, 48, 183, 1)),
                              child: Center(
                                  child: Text(
                                "LOGIN",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ))),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: RichText(
                            text: TextSpan(
                              text: "Or Login with",
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Wrap(
                             spacing: 15.0, 
                            children: List.generate(
                                3,
                                (index) => Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                            "assets/image/${signUpImages[index]}"),
                                      ),
                                    )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
