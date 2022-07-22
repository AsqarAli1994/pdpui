import 'package:flutter/material.dart';
import 'package:pdpui/soliq_main.dart';
class SoliqlarniTolash extends StatefulWidget {
  static final String id = "soliqlarni_tolash";
  const SoliqlarniTolash({Key? key}) : super(key: key);

  @override
  State<SoliqlarniTolash> createState() => _SoliqlarniTolashState();
}

class _SoliqlarniTolashState extends State<SoliqlarniTolash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff6f6fa),
        body: ListView(
          children: [
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Container(
                      height: 120,
                      width: 120,
                      child: Image.asset('images/soliq_logo.png'),
                    ),
                  ),
                ),
                Text("Soliqlarni to`lash", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 40,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13), border: Border.all(color: Color.fromARGB(255, 30, 43, 108))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "JSHSHIR",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, SoliqMain.id);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: Color.fromARGB(255, 54, 75, 168)
                      ),
                      child: Center(child: Text("Davom etish", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
                    ),
                  ),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}
