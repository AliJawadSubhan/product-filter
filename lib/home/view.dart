import 'package:filtered_list/model/product_model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> categories = ['Electronics', 'Sports', 'Clothing'];
  List<String> selecetedCategories = [];

  @override
  Widget build(BuildContext context) {
    final filteredProducts = products.where((element) {
      return selecetedCategories.isEmpty ||
          selecetedCategories.contains(element.category);
    }).toList();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: categories
                  .map((e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FilterChip(
                          selected: selecetedCategories.contains(e),
                          label: Text(e),
                          onSelected: (selected) {
                            setState(() {
                              if (selected) {
                                selecetedCategories.add(e);
                              } else {
                                selecetedCategories.remove(e);
                              }
                            });
                          },
                          selectedColor: Colors.grey,
                        ),
                      ))
                  .toList(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 4, // Add some shadow to the card
                    color: Colors.white, // Background color of the card
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Rounded corners
                      side: BorderSide(
                          color: Colors.grey.shade300), // Border color
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name: ' + filteredProducts[index].name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Category: ' + filteredProducts[index].category,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
