import 'package:flutter/material.dart';
import 'package:flutter_demo/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool boolvalue=false;
  bool check=false;
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        height: width*2.5,
        width: width*1,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                color: primaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on,color:subColor,size: width*0.2),
                    Text("VISION GO",style: TextStyle(color: subColor,fontWeight: FontWeight.bold,fontSize: width*0.06),)
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding:EdgeInsets.all(width*0.1),
                width: width*1,
                // height: width*1.2,
                decoration: BoxDecoration(
                  color: subColor,
                  borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(width*0.1) ,
                      topRight:Radius.circular(width*0.1)
                  )
                ),
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hosgeldiniz",style: TextStyle(fontWeight: FontWeight.w500,fontSize:width*0.05,color: primaryColor)),
                      SizedBox(
                        height: width*0.01,
                      ),
                      Text("Lutfen bilgilerinix ile giris yapiniz",style: TextStyle(color: Colors.black54),),
                      SizedBox(
                        height: width*0.08,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.check),
                         labelText: "E-mail Address",labelStyle:TextStyle(color:Colors.black26,fontSize: width*0.035),)
                      ),
                      SizedBox(
                        height: width*0.05,
                      ),
                      TextFormField(
                        obscureText: boolvalue?false:true,
                        decoration: InputDecoration(
                          labelText: "Password",labelStyle:TextStyle(color:Colors.black26,fontSize: width*0.035),
                          suffixIcon: InkWell(
                            onTap: () {
                              boolvalue=!boolvalue;
                              setState(() {
                                
                              });
                            },
                              child:boolvalue?Icon(Icons.remove_red_eye):Icon(Icons.visibility_off))
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: check,
                                  onChanged: (value) {
                                    check=value!;
                                    setState(() {

                                    });
                                  },),
                              Text("Beni Hatirla",style: TextStyle(color: Colors.black54,fontSize: width*0.035 )),
                            ],
                          ),
                          Text("Sifremi Unuttum",style: TextStyle(color: Colors.black54,fontSize: width*0.035 ))
                        ],
                      ),
                      SizedBox(
                        height: width*0.1,
                      ),
                      Center(
                        child: Container(
                          height: width*0.12,
                          width: width*0.5,
                          decoration: BoxDecoration(
                              color: primaryColor,
                            borderRadius: BorderRadius.circular(width*0.3),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.orange,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                    offset: Offset(0,4)
                                )
                              ]
                          ),
                          child: Center(child: Text("LOGIN",style: TextStyle(color: subColor),)),
                        ),
                      )
                    ],
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
