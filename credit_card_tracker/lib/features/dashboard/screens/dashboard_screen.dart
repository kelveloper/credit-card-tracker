import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Example data for demonstration
    final cards = [
      {'name': 'Old Navy CC', 'balance': 0.0},
      {'name': 'JetBlue CC', 'balance': 368.06},
      {'name': 'Capital One CC', 'balance': 0.0},
      {'name': 'BP CC', 'balance': 0.0},
      {'name': 'Discover CC', 'balance': 0.0},
      {'name': 'Prime CC', 'balance': 55.12},
      {'name': 'Chase Freedom CC', 'balance': 0.0},
      {'name': 'Macy CC', 'balance': 0.0},
      {'name': 'Apple CC', 'balance': 16.63},
      {'name': 'Best Buy CC', 'balance': 0.0},
    ];
    final total = cards.fold<double>(0, (sum, card) => sum + (card['balance'] as double));
    final now = DateTime.now();
    final monthStart = DateTime(now.year, now.month, 1);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Credit Card Tracker'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${monthStart.month}/${monthStart.day}/${monthStart.year}',
                  style: const TextStyle(fontSize: 14),
                ),
                Text(
                  'Last updated: ${now.month}/${now.day}/${now.year}, ${now.hour}:${now.minute.toString().padLeft(2, '0')}',
                  style: const TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cards.length,
              itemBuilder: (context, index) {
                final card = cards[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    title: Text(card['name'] as String),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(' 24${(card['balance'] as double).toStringAsFixed(2)}'),
                        const SizedBox(width: 12),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Pay Now'),
                        ),
                        const SizedBox(width: 8),
                        OutlinedButton(
                          onPressed: () {},
                          child: const Text('Add Balance'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total Payment:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  ' 24${total.toStringAsFixed(2)}',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Add Card'),
            ),
          ),
        ],
      ),
    );
  }
} 