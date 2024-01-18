import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarouselSliders extends StatefulWidget {
  CarouselSliders({super.key});

  @override
  State<CarouselSliders> createState() => _CarouselSlidersState();
}

class _CarouselSlidersState extends State<CarouselSliders> {
  late PageController _pageController;

  int activePage = 0;

  final List<Color> containerColors = [
    const Color(0xFF33A1CC),
    const Color(0xFFDCB223),
    const Color(0xFF31CE95),
  ];

  final List<Color> color = [
    const Color.fromARGB(255, 205, 107, 16),
    const Color(0xFF234DDC),
    const Color(0xFFCE316A),
  ];
 
  List<String> titles = [
    "Orders",
    "Subscription",
    "View Customers",
  ];

  List<String> imageUrl = [
    "assets/icons/orders-illustration-image.svg",
    "assets/icons/subscriptions-illustration-image.svg",
    "assets/icons/customers-illustration-image.svg",
    
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(viewportFraction: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: containerColors[index],
      //width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,

      width: double.infinity,
      child: PageView.builder(
          controller: _pageController,
          pageSnapping: true,
          onPageChanged: (value) {
            activePage = value;
          },
          itemCount: containerColors.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: containerColors[index],
              ),
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Stack(
                children: [
                    Positioned(
                    top: 20,
                    left: 30,
                    bottom: 66,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      //backgroundImage: Image(image: SvgPicture.asset('assets/icons/Group 921.svg')),
                      radius: 60,
                      child: SvgPicture.asset(imageUrl[index], fit: BoxFit.contain, width: 120, height: 120,),
                    ),
                  ),
                  Positioned(
                    top: 180,
                    left: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color: Colors.green.shade100,
                        color: color[index],
                      ),
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Center(
                        child: Text(
                          titles[index],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
