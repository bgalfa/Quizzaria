import 'package:flutter/material.dart';
import 'db_model.dart';

class HistoryScreen extends StatelessWidget {
  final VoidCallback onBackToStart;

  const HistoryScreen({required this.onBackToStart, Key? key})
      : super(key: key);

  Future<List<QuizSummaryModel>> _fetchSummaries() async {
    return await QuizSummaryModel.retrieveAllSummaries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz History'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: onBackToStart, // Triggers transition to StartScreen
        ),
      ),
      body: FutureBuilder<List<QuizSummaryModel>>(
        future: _fetchSummaries(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No quiz history available.'));
          } else {
            final summaries = snapshot.data!;
            return ListView.builder(
              itemCount: summaries.length,
              itemBuilder: (context, index) {
                final summary = summaries[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('Category: ${summary.quizCategory}'),
                    subtitle: Text('Date: ${summary.dateTime.toLocal()}'),
                    trailing: Text('Score: ${summary.score}'),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
