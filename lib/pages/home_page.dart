import 'package:flutter/material.dart';
import 'package:project_flutter/pages/plant_page.dart';
import '../models/plant_item.dart';

var plantList = [
  PlantItem(name: 'Monstera', price: 10000, image: 'plant1.jpg',descrip: 'มอนสเตอร่า (Monstera, Swiss Cheese Plant) หรือที่เรียกทั่วไปว่า พลูฉีก หรือ พลูแฉก มีถิ่นกำเนิดในทวีปอเมริกากลาง พบมากในป่าดิบชื้น เป็นต้นไม้ในวงศ์ Araceae มีชื่อทางวิทยาศาสตร์ว่า Monstera deliciosa Liebm. ลักษณะลำต้นเป็นข้อสั้น จัดอยู่ในกลุ่มไม้เลื้อย สามารถเลื้อยได้ไกล 4 เมตร มีจุดเด่นที่ใบเดี่ยวขนาดใหญ่ โคนใบเว้าลึกเป็นรูปหัวใจ ปลายใบเรียวแหลม ขอบใบหยักลึกเกือบถึงเส้นกลางใบ 5 แฉก ใบหนาผิวมัน มีทั้งสีเขียวเข้มและใบด่าง ออกดอกตามซอกใบ มีผลสีเขียว จะเปลี่ยนเป็นสีน้ำตาลเมื่อผลสุกและส่งกลิ่นแรง',temp: '18-20 c',light: 'Diffused'),
  PlantItem(name: 'Dieffenbachia seguine', price: 2000, image: 'plant2.jpg',descrip: 'ว่านอ้ายใบ้ ชื่อวิทยาศาสตร์: Dieffenbachia picta เป็นพืชในสกุลสาวน้อยประแป้ง วงศ์ Araceae ในสมัยก่อนนักเลงและนักมวยเชื่อว่าว่านชนิดนี้ทำให้คงกระพัน ชกมวยแล้วไม่เกิดแผลแตก โดยจะนำว่านส่วนลำต้นมาห่อด้วยมะขามเปียกแล้วกลืนลงไป ทำให้มีอาการชาตามผิวหน้า แขน ขา คอบวม ลิ้นคับปาก พูดไม่ได้ เมื่อใช้มีดฟันจะเกิดรอยช้ำหรือเป็นรอยแดง',temp: '18-30 c',light: 'Diffused'),
  PlantItem(name: 'Fiddle-leaf fig', price: 3000, image: 'plant3.jpg',descrip: 'Ficus lyrata หรือที่รู้จักกันทั่วไปในชื่อ fiddle-leaf fig เป็นพันธุ์ไม้ดอกในตระกูลหม่อนและมะเดื่อ Moraceae มีถิ่นกำเนิดในแอฟริกาตะวันตกตั้งแต่แคเมอรูนตะวันตกไปจนถึงเซียร์ราลีโอนที่เติบโตในป่าฝนเขตร้อนที่ลุ่ม สามารถเติบโตได้สูงถึง 12–15 เมตร',temp: '18-39 c',light: 'Diffused'),
  PlantItem(name: 'Homalomena', price: 50000, image: 'plant4.jpg',descrip: 'Homalomena เป็นไม้ดอกในวงศ์ Araceae Homalomena พบได้ทั่วไปในเอเชียใต้และแปซิฟิกตะวันตกเฉียงใต้ แต่มีเพียงไม่กี่ชนิดที่เป็นที่รู้กันว่าเป็นชนพื้นเมืองในละตินอเมริกา Homalomena จำนวนมากมีกลิ่นโป๊ยกั๊ก เห็นได้ชัดว่าชื่อมาจากภาษามลายูที่แปลผิด แปลว่า โฮมาลอส หมายถึง แบน และ เมเน = ดวงจันทร์',temp: '18-30 c',light: 'Diffused'),
  PlantItem(name: 'Snake Plant', price: 4000, image: 'plant5.jpg',descrip: 'ลิ้นมังกร เป็นพืชในวงศ์ Asparagaceae เป็นไม้ล้มลุก มีเหง้าใต้ดิน ใบเดี่ยว สีเขียวเข้มแกมเทา อวบน้ำ ดอกช่อ สีขาวมีกลิ่นหอม เป็นพืชท้องถิ่นในแอฟริกาตะวันตกตั้งแต่ไนจีเรียถึงคองโก ใช้เป็นไม้ประดับ ใบใช้ตำละเอียด แก้พิษตะขาบ แมงป่อง',temp: '18-30 c',light: 'Diffused'),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List<PlantItem>? _plantList;

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 50, right: 20),
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Plant Tips',
                        style: Theme
                            .of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.tips_and_updates,
                        color: Colors.white,
                        size: 50,
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Colors.grey),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int i) {
                var plant = plantList[i];
                return Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PlantPage(plant: plant)),
                      );
                    },
                    child: Padding(
                       padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Image.asset(
                                  'images/${plant.image}',
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16.0,
                              height: 5.0,
                            ),
                            Expanded(
                                  child: Text(
                                    plant.name,
                                    style: const TextStyle(fontSize: 20.0),
                                  ),
                            )
                          ],
                        ),
                     // ),
                    ),
                  ),
                );
              },
              itemCount: plantList.length,
            ),
          )
        ],
      ),
    );
  }
  
}
