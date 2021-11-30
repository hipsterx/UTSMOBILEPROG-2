import 'package:flutter/material.dart';

class KetItem extends StatelessWidget {
  const KetItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/kembali.png',
              width: 70,
              height: 35,
            ),
            Center(
              child: Image.asset(
                'assets/fujifilm-banner.png',
                width: 100,
                height: 20,
              ),
            ),
            Image.asset(
              'assets/kembali.png',
              width: 70,
              height: 35,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Image.asset(
                    'assets/InstaxMini7plus_Mint_R.png',
                    width: MediaQuery.of(context).size.width / 1.7,
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Instax Mini Min 7+',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'TEST.',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Poin & Shot',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'TEST.',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Poin & Shot',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'TEST',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border(
                  top: BorderSide.none,
                ),
              ),
              width: 394,
              height: 53,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$49.90',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xfff8FCEB4),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff8FCEB4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/ket-item');
                      },
                      child: Text(
                        'Buy',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
