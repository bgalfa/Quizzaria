import 'package:flutter/material.dart';
import 'package:quiz_app/questions/more_qs.dart';

class Category extends StatefulWidget {
  const Category({super.key, required this.onSelectCategory});
  final void Function(String answer) onSelectCategory;

  @override
  State<Category> createState() {
    return _Category(onSelectCategory: onSelectCategory);
  }
}

class _Category extends State<Category> {
  final List<String> genre = questionsMenu.keys.toList();
  final void Function(String answer) onSelectCategory;

  _Category({required this.onSelectCategory});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 300,
          ),
          const Text(
            "Select Quiz Category",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(173, 127, 187, 211),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: genre.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      onSelectCategory(genre[index]);
                    },
                    child: Text(genre[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
