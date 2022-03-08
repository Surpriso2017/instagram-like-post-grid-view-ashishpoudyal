import 'package:flutter/material.dart';

class TabBarRow extends StatelessWidget {
  const TabBarRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Container(
              child: TabBar(
            labelColor: Colors.grey,
            tabs: [
              Tab(
                  icon: Icon(
                Icons.grid_4x4_sharp,
              )),
              Tab(
                  icon: Icon(
                Icons.person,
              ))
            ],
          )),
          Container(
            height: 400,
            decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(color: Colors.grey, width: 0.5))),
            child: TabBarView(children: [
              Container(
                child: Center(
                    child: GridView.builder(
                        itemCount: 10,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            childAspectRatio: 2 / 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            child: FittedBox(
                              child: Image.asset("assets/images/profile.jpg"),
                              fit: BoxFit.fill,
                            ),
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                          );
                        })),
              ),
              Container(
                child: Center(
                    child: GridView.builder(
                        itemCount: 10,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            childAspectRatio: 2 / 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            child: FittedBox(
                              child: Image.asset("assets/images/profile.jpg"),
                              fit: BoxFit.fill,
                            ),
                            height: 100,
                            width: 100,
                            // color: Colors.grey,
                          );
                        })),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
