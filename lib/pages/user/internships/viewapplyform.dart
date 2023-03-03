import 'package:flutter/material.dart';

import '../../../utills/app_styles.dart';


class InternDetail extends StatefulWidget {
  final Map<String, dynamic> information;
  const InternDetail({super.key, required this.information});

  @override
  State<InternDetail> createState() => _InternDetailState();
}

class _InternDetailState extends State<InternDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Styles.primary1,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(9),
                          bottomRight: Radius.circular(9))),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 9,right : 9,top :80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${widget.information['title']}",
                          style: Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
                                ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${widget.information['subtitle']}",
                          style: Styles.headlinestyle.copyWith(color: Colors.white,fontSize: 15)
                              ),
                        
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -30,
                  right: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 19, color: Styles.secondary),
                        color: Colors.transparent),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 19),
              child: Text(
                "Details",
                style:  Styles.headlinestyle.copyWith(color: Styles.primary1,fontSize: 23,fontWeight: FontWeight.bold
                              ),
                        
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
              child: Container(
                height: 230,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Styles.primary1,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "- Mode :${widget.information['details']['mode']}",
                      style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),
                    ),
                    Text(
                      "- Stippen : ${widget.information['details']['stippen']}",
                      style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),
                    ),
                    Text(
                      "- Location : ${widget.information['details']['Location']}",
                      style:Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),
                    ),
                    Text(
                      "- Duration : ${widget.information['details']['duration']}",
                      style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),
                    ),
                    Text(
                      "- Experience : ${widget.information['details']['exp']}",
                      style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18)
                    ),
                    Text(
                      "- Knowledg about :${widget.information['details']['know']}",
                      style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 19),
              child: Text(
                "Perks",
                style:   Styles.headlinestyle.copyWith(color: Styles.primary1,fontSize: 23,fontWeight: FontWeight.bold
                              ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Styles.primary1,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "${widget.information['perks']['one']}",
                      style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18)   ),
                    Text(
                      "${widget.information['perks']['two']}",
                      style:  Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18) ),
                    Text(
                      "${widget.information['perks']['three']}",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "${widget.information['perks']['four']}",
                      style: Styles.smallheadlinestyle.copyWith(color: Colors.white,fontSize: 18) ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ApplyForm extends StatefulWidget {
  final String text;
  const ApplyForm({super.key, required this.text});

  @override
  State<ApplyForm> createState() => _ApplyFormState(this.text);
}

class _ApplyFormState extends State<ApplyForm> {
  String text;
  _ApplyFormState(this.text);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Styles.primary1,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(9),
                        bottomRight: Radius.circular(9),
                      )),
                  child: Padding(
                    padding:
                         const EdgeInsets.only(left: 9,right : 9,top :80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Apply for \n${text}",
                          style:  Styles.headlinestyle.copyWith(fontSize: 25,color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Begin New Journey with Techno It Hub",
                          style:  Styles.smallheadlinestyle.copyWith(fontSize: 15,color : Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: -30,
                    right: -40,
                    child: Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 19, color: Styles.secondary),
                          color: Colors.transparent),
                    ))
              ],
            ),
            SingleChildScrollView(
              child: Container(
                height: 540,
                width : MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 19, right: 19, top: 19),
                margin: const EdgeInsets.only(left: 19, right: 19, top: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(color: Styles.primary1)),
                child: Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                    ),
                    SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 19, top: 5),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.top,
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                          autocorrect: false,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Styles.secondary),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "College/School",
                      style:  Styles.smallheadlinestyle.copyWith(fontSize: 18),
                    ),
                    SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 19, top: 5),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.top,
                          // controller: emailController,
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                          autocorrect: false,
            
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Styles.secondary),
                            ),
            
                            // errorBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.red) )
            
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
            
                            errorStyle:
                                TextStyle(color: Colors.red, fontSize: 13),
                            // errorText:  _valide?"Enter valid email":null,
                          ),
            
                          onFieldSubmitted: (value) {
                            setState(() {
                              // emailController.text = value.toString();
                            });
                          },
                        ),
                      ),
                    ),
                    Text(
                      "Contact",
                      style:  Styles.smallheadlinestyle.copyWith(fontSize: 18),
                    ),
                    SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 19, top: 5),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.top,
                          keyboardType: TextInputType.phone,
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                          autocorrect: false,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Styles.secondary),
                            ),
            
                            // errorBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.red) )
            
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Email",
                      style:  Styles.smallheadlinestyle.copyWith(fontSize: 18),
                    ),
                    SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 19, top: 5),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.top,
                          style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                          autocorrect: false,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Styles.secondary),
                            ),
            
                            // errorBorder: OutlineInputBorder(borderSide:BorderSide(color: Colors.red) )
            
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Mode",
                      style: Styles.smallheadlinestyle.copyWith(fontSize: 18),
                    ),
                    SizedBox(
                      height: 39,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Row(
                            children: [
                              Radio(
                                value: "Online",
                                groupValue: "mode",
                                onChanged: (val) {},
                                activeColor: Styles.secondary,
                                focusColor: Styles.secondary,
                              ),
                              Expanded(
                                child: Text("Online"),
                                flex: 1,
                              )
                            ],
                          )),
                          Expanded(
                              child: Row(
                            children: [
                              Radio(
                                  value: "Ofline",
                                  groupValue: "mode",
                                  onChanged: (val) {}),
                              Expanded(
                                child: Text("Ofline"),
                                flex: 1,
                              )
                            ],
                          )),
                          Expanded(
                              child: Row(
                            children: [
                              Radio(
                                  value: "Hybrid",
                                  groupValue: "mode",
                                  onChanged: (val) {}),
                              Expanded(
                                child: Text("Hybride"),
                                flex: 1,
                              )
                            ],
                          ))
                          // RadioListTile(value: "Hybride", groupValue: "mode", onChanged: (val){},title: Text("Hybride"),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Styles.primary1,
                            minimumSize: const Size(double.infinity, 56),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                            ))),
                        child: Text(
                          "Apply",
                          style:  Styles.smallheadlinestyle.copyWith(fontSize: 18,color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
