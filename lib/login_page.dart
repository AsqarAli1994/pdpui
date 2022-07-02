import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  static final String id = "login_pgae";
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // width: MediaQuery.of(context).size.width*50,
          width: double.infinity,

          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
                colors: [
                  Color(0xf086417).withOpacity(0.9),
                  Color(0xf086417).withOpacity(0.8),
                  Color(0xf086417).withOpacity(0.7),
                ]
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox( height: 80,),

              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Login",style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.w400),),
                    Text("Welcome to back", style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width*1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight:Radius.circular(50), )
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: [
                          SizedBox(height: 60),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Color.fromARGB(171, 171, 171, 171), blurRadius: 20, offset: Offset(0,10))
                              ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Colors.grey)
                                    )
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(

                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.green[800],
                            ),
                            child: Center(child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 50, height: 2,
                              child:DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.black12
                                )
                              ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Login with SNS",style: TextStyle(color: Colors.black54),),
                              ),
                              SizedBox(width: 50, height: 2,
                                child:DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.black12
                                    )
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blue[800],
                                    ),
                                    child: Center(child: Text("Facebook", style: TextStyle(color: Colors.white),)),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.black,
                                    ),
                                    child: Center(child: Text("Github", style: TextStyle(color: Colors.white),)),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
