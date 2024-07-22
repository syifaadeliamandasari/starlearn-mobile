import 'package:flutter/material.dart';
import 'package:project_library/widget/LogAppbar.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true, 
            expandedHeight: 70,
            backgroundColor:Color.fromARGB(255, 33, 56, 87),
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: LAppBar(),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10, bottom: 40),
                  child: Text(
                    "Please Sign in to continue",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Nama',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        prefixIcon: Icon(Icons.person, color: Colors.white, size: 30),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        prefixIcon: Icon(Icons.mail, color: Colors.white, size: 30),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        prefixIcon: Icon(Icons.key, color: Colors.white, size: 30),
                      ),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "home");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 125, 171, 251),
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 21,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have any Bitch? ",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "register");
              },
              child: Text(
                "Find a Bitch Now!",
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 95, 175, 255),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:project_library/widget/LogAppbar.dart';

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         padding: EdgeInsets.only(top: 40),
//         children: [
//           LAppBar(),
//           Container(
//             margin: EdgeInsets.only(left: 30, top: 40),
//             child: Text(
//               "Login",
//               style: TextStyle(
//                 fontSize: 35,
//                 fontWeight: FontWeight.w500,
//                 fontStyle: FontStyle.italic,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(left: 30, top: 10, bottom: 40),
//             child: Text(
//               "Please Sign in to continue",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w400,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 40),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 TextField(
//                   decoration: InputDecoration(
//                     labelText: 'BlaBla',
//                     labelStyle: TextStyle(color: Colors.white),
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.white, width: 1),
//                     ),
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.blue),
//                     ),
//                     prefixIcon: Icon(Icons.person, color: Colors.white, size: 30),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: 'Email',
//                     labelStyle: TextStyle(color: Colors.white),
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.white, width: 1),
//                     ),
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.blue),
//                     ),
//                     prefixIcon: Icon(Icons.mail, color: Colors.white, size: 30),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     labelStyle: TextStyle(color: Colors.white),
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.white, width: 1),
//                     ),
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.blue),
//                     ),
//                     prefixIcon: Icon(Icons.key, color: Colors.white, size: 30),
//                   ),
//                 ),
//                 SizedBox(height: 50),
//                 Column(
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         primary: Color.fromARGB(255, 125, 171, 251),
//                         padding: EdgeInsets.symmetric(vertical: 15, horizontal: 110),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                       ),
//                       child: Text(
//                         "Sign in",
//                         style: TextStyle(
//                           fontWeight: FontWeight.w500,
//                           color: Colors.black,
//                           fontSize: 21,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(top: 25),
//                       child: Text(
//                         "Forgot Password?",
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 100),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "Don't have any Bitch? ",
//                           style: TextStyle(
//                             fontSize: 15,
//                             color: Colors.white,
//                           ),
//                         ),
//                         GestureDetector(
//               onTap: () {
//                 Navigator.pushNamed(context, "register");
//               },
//               child: Text(
//                 "Find a Bitch Now!",
//                 style: TextStyle(
//                   fontSize: 15,
//                   color: Color.fromARGB(255, 95, 175, 255),
//                   decoration: TextDecoration.underline,
//                 ),
//               ),
//             ),
//                       ],
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }