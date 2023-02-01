import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FarmFresh(),
  ));
}

class FarmFresh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.green,
              title: const Text("FARMERS FRESH ZONE"),
              floating: true,
              pinned: true,
              actions: [
                Row(
                  children: const [
                    Icon(Icons.location_on_outlined),
                    Text("Kochi"),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                )
              ],
              bottom: AppBar(
                backgroundColor: Colors.green,
                elevation: 0,
                title: Container(
                  height: 37,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search for vegetables,fruits..",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              const SizedBox(
                height: 12,
              ),
              Material(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width * 0.26,
                      decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 0.5, color: Colors.green),
                      ),
                      child: Center(
                        child: Text(
                          "VEGETABLES",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green[900]),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width * 0.18,
                      decoration: BoxDecoration(
                          color: Colors.green[50],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.5, color: Colors.green)),
                      child: Center(
                        child: Text(
                          "FRUITS",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green[900]),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width * 0.18,
                      decoration: BoxDecoration(
                          color: Colors.green[50],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.5, color: Colors.green)),
                      child: Center(
                        child: Text(
                          "EXOTIC",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green[900]),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width * 0.26,
                      decoration: BoxDecoration(
                          color: Colors.green[50],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.5, color: Colors.green)),
                      child: Center(
                        child: Text(
                          "FRESH CUTS",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green[900]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      height: 200,
                      width: double.infinity,
                      child: const Image(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/FarmCover4.jpg"))),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Material(
                  child: Container(
                    height: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1, color: Colors.green)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                const Icon(
                                  Icons.timer,
                                  color: Colors.green,
                                  size: 25,
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  "30 MIN POLICY",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(
                                  Icons.my_location_outlined,
                                  color: Colors.green,
                                  size: 25,
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  "TRACEABILITY",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(Icons.location_city_outlined,
                                    color: Colors.green, size: 25),
                                const SizedBox(height: 3),
                                Text(
                                  "LOCAL SOURCING",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                )
                              ],
                            )
                          ]),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, bottom: 9),
                child: Text(
                  "Shop by Category",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CustomGridClass(),
            ])),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.green,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.green,
              ),
              label: 'Account')
        ],
      ),
    );
  }
}

class CustomGridClass extends StatelessWidget {
  var Images = [
    "assets/images/FarmOffers.jpg",
    "assets/images/FarmFriuts.jpg",
    "assets/images/Veg1.jpg",
    "assets/images/FarmCuts.jpg",
    "assets/images/FarmExotic.jpg",
    "assets/images/FarmNutritions.jpg",
    "assets/images/FarmSpices.jpg",
    "assets/images/FarmSalad.jpg",
    "assets/images/FarmPreservatives.jpg"
  ];
  var names = [
    "Offers",
    "Fruits",
    "Vegetables",
    "Fresh Cuts",
    "Exotic",
    "Nutritious",
    "Spices",
    "Salads",
    "Preservatives"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(bottom: 22),
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 4, mainAxisSpacing: 4),
      itemBuilder: (context, index) {
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          child: Stack(
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),),
                  child: Image(image: AssetImage(Images[index]),),),
              Positioned(
                bottom: 11,
                left: 10,
                child: Text(
                  names[index],
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700]),
                ),
              ),
            ],
          ),
        );
      },
      itemCount: Images.length,
    );
  }
}
