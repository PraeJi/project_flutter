import 'package:flutter/material.dart';
import 'package:project_flutter/models/plant_item.dart';

class PlantPage extends StatelessWidget {
  final PlantItem plant;

  const PlantPage({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(plant.name)),
      body: Stack(
        children: [
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    'images/${plant.image}',
                    width: 500,
                    height: 300,
                      fit: BoxFit.cover,
                  ),
                ),
                Text(
                  plant.name,
                  style: const TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  plant.descrip,
                  style: const TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.green.shade600,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Colors.grey
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                              'Temperature',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          const Icon(Icons.local_fire_department_outlined,size: 50,),
                          Text(
                              plant.temp,
                            style: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.green.shade600,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Colors.grey),
                        ],
                      ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                                'Light',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const Icon(Icons.wb_sunny_outlined,size: 50,),
                            Text(
                                plant.light,
                              style: const TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],

      ),
    );
  }
}
