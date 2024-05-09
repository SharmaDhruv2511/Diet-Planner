import 'package:bmi_calculator/screens/trainerdetail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalizedDiet extends StatefulWidget {
  const PersonalizedDiet({super.key});

  @override
  State<PersonalizedDiet> createState() => _PersonalizedDietState();
}

class _PersonalizedDietState extends State<PersonalizedDiet> {
  List mealName = [
    'Kena',
    'Mena',
    'Raj',
    'Rajiv',
    'VEG',
    'NON-VEG',
    'VEG',
    'NON-VEG',
  ];
  List photo = [
    'assets/images/i1.jpeg',
    'assets/images/i2.jpeg',
    'assets/images/i3.jpeg',
    'assets/images/i4.jpeg',
  ];
  List price = [200, 300, 400, 500];
  List rate = [3, 4, 5, 2];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Personalized Diet here'),
      ),
      body: Container(
        color: Colors.grey[200],
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              childAspectRatio: 0.88),
          scrollDirection: Axis.vertical,
          itemCount: 4,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(
                  () => TrainerDetails(mealName:  mealName[index], price:  price[index], rate: rate[index],photo: photo[index],)
                );
              },
              child: Card(
                color: Colors.white,
                child: ListTile(
                  title: Image.asset(
                    photo[index],
                    height: 100,
                    width: 100,
                    fit: BoxFit.fitHeight,
                  ),
                  subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              mealName[index],
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Charges ${price[index]}',
                              style: const TextStyle(color: Colors.green),
                            )),
                        const SizedBox(height: 5),
                        Align(
                            alignment: Alignment.center,
                            child: Text('Rate: ${rate[index]} ★'))
                      ]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
