import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            height: 250,
          ),
          const Text(
            "Select Quiz Category",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(231, 5, 201, 15),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 500,
              child: ListView.builder(
                itemCount: genre.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(100, 8, 100, 8),
                    child: OutlinedButton(
                      onPressed: () {
                        onSelectCategory(genre[index]);
                      },
                      child: Text(
                        genre[index],
                        style: const TextStyle(
                          color: Color.fromARGB(255, 3, 98, 174),
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
