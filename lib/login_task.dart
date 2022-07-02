import 'package:flutter/material.dart';
class LoginTask extends StatefulWidget {
  static final String id = 'login_task';
  const LoginTask({Key? key}) : super(key: key);

  @override
  State<LoginTask> createState() => _LoginTaskState();
}

class _LoginTaskState extends State<LoginTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            Colors.black38.withOpacity(0.8),
            Colors.black38.withOpacity(0.7),
            Colors.black38.withOpacity(0.6)
          ]
        )
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 80,),
            
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 30),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text('Welcome', style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(171, 171, 171, 171), blurRadius: 20, offset: Offset(0,10),
                              )
                            ]
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.grey)
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Full name",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.grey)
                                  ),
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
                                  border: Border(
                                      bottom: BorderSide(color: Colors.grey)
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Phone",
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
                                      border: InputBorder.none
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
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(child: Text("SignUp", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
                        ),
                        SizedBox(height: 10,),
                        Text("Sign Up with SNS"),
                        SizedBox(
                          height: 15,
                        ),
                        
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Center(child: Text("Facebook", style: TextStyle(color: Colors.white, fontSize: 16),)),
                                ),
                              ),
                            ),
                            
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Center(child: Text("Google", style: TextStyle(color: Colors.white, fontSize: 16),)),
                                ),
                              ),
                            ),
                            
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Center(child: Text("Apple", style: TextStyle(color: Colors.white))),
                                ),
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
