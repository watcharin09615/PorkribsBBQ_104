import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pork Rlibs BBQ"),
      ),
      body: ListView(
        children :[
            Image.asset('images/porklibs_cover.jpg'),
            tex('ซี่โครงหมูบาร์บีคิวอบชีส เมนูเริ่ด ๆ ที่ทำได้ง่าย ๆ เพียงมีหม้อหุงข้าว','วิธีทำ "ซี่โครงหมูบาร์บีคิวอบชีส" เมนูเด็กหอ ที่ทำได้ในหม้อหุ้งข้าว'),
            img(90.0, 'https://instagram.fhdy2-1.fna.fbcdn.net/v/t51.2885-19/s320x320/242386567_2675307709438009_5643413228907202740_n.jpg?_nc_ht=instagram.fhdy2-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=IoWs6r7lgPsAX9Wh_9H&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT_q7_sfSFIEgKUgFwVOwcx158DYMLRi7t6Ol85LwB0zWQ&oe=61C40C84&_nc_sid=7bff83')
            ,text('17 ธ.ค. 2564 . โดยเซฟ Error')
            ,ca()
            ,linetext('เกริ่นสักหน่อย')
            ,text('เมื่อเพื่อน ๆ อยากจะทำอะไรกินที่พิเศษ แต่อยู่หอ จะอุปกรณ์ก็ไม่อำนวยเท่าไรใช่ไหมครับ วันนี้จะมาแนะนำเมนูที่ทำได้ง่าย เพียงแค่มีหม้อหุงข้าว ก็ทำได้นั่นก็คือ “ซี่โครงหมูบาร์บีคิวอบชีส” ที่ทำได้อยู่ที่ไหนก็ทำได้ ถ้าพร้อมแล้วล้างหม้อหุงข้าวแล้วเข้าครัวพร้อมกันเลยครับ ')
        ],
      ),
    );
  }
  Column text(tx) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            tx,
            style: GoogleFonts.mali(
              color: Colors.black,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }

  Row linetext(tex){
    return Row(
      children: [
        divider(),
        Text(tex),
        divider()
      ],
    );
  }

  Expanded divider() => Expanded(
        child: Container(
          margin: const EdgeInsets.only(left: 10,right: 20),
          child: const Divider(
            thickness: 3,
          )
      ),
    );
  

  CircleAvatar img(ra,ur) {
    return CircleAvatar(
      radius: ra,
      backgroundImage:
          NetworkImage(ur),
      backgroundColor: Colors.transparent,
    );
  }
  

  Widget ca(){
  return Container(
      margin: const EdgeInsets.all(8),
      height: 105,
      child: Card(
        color: Colors.yellow[100],
        child: Row(
          children: [
            object(FontAwesomeIcons.stopwatch,Colors.blue[300],'เวลาเตรียม','10 นาที'),
            object(FontAwesomeIcons.utensils,Colors.orange[400],'เวลาปรุง','10 นาที'),
            object(FontAwesomeIcons.fireAlt,Colors.red[800],'แคลอรี่','300 kcal/เสริฟ'),
            object(FontAwesomeIcons.user,Colors.green,'สำหรับ','2 เสริฟ'),

          ],
        ),
      ),
    );
  }
  Widget object(ico,col,tex,tex1){
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          ico,
          color: col,
        ),
        Text(
          tex,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          tex1,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
      ),
    );
  }

  Container tex(te1,te) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        children: [
          Text(
              te,
              style: GoogleFonts.mali(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.justify,
            ),
            Text(
              te1,
              style: GoogleFonts.mali(
                color: Colors.grey[700],
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.justify,
          ),
        ]
      ),
    );
  }
  Row icotex(ico,tex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(ico),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            tex,
            style: GoogleFonts.mali(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

