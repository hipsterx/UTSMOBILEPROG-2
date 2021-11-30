import 'package:flutter/material.dart';
import 'package:uts/dashboard.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 1.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/fujifilm.png',
              width: 70,
              height: 35,
            ),
            Image.asset(
              'assets/fujifilm-banner.png',
              width: 100,
              height: 20,
            ),
            Image.asset(
              'assets/shop.png',
              width: 70,
              height: 35,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Search(),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Stack(
              fit: StackFit.passthrough,
              alignment: Alignment.center,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  color: Color(0xff8FCEB4),
                  margin: EdgeInsets.only(
                    right: 21,
                  ),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                      ),
                      child: Text(
                        'Limited Edition',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    trailing: SizedBox(
                      width: 15,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'Instax Mini Mint 7+',
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            '\$ 49.90',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xffffffff),
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
                              color: Colors.blueGrey,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'assets/InstaxMini7plus_Mint_R.png',
                    width: MediaQuery.of(context).size.width / 3.6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
