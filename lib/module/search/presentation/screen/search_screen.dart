import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  static const String name = 'search';
  static const String path = 'search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                prefixIcon: const Icon(Icons.search),
              ),
              onSubmitted: (query) {
                // Maneja la búsqueda aquí
                print('Search query: $query');
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Reemplaza con el número de resultados de búsqueda
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.location_city),
                    title: Text('Result $index'), // Reemplaza con el resultado real
                    onTap: () {
                      // Maneja la selección del resultado aquí
                      print('Selected result $index');
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}