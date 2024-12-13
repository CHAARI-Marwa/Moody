import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TicTacToePage extends StatefulWidget {
  const TicTacToePage({Key? key}) : super(key: key);

  @override
  State<TicTacToePage> createState() => _TicTacToePageState();
}

class _TicTacToePageState extends State<TicTacToePage> {
  List<String> board = List.filled(9, ''); // Game board
  String currentPlayer = 'X'; // Current player
  String statusMessage = "Player X's turn";

  void _makeMove(int index) async {
    if (board[index].isEmpty) {
      setState(() {
        board[index] = currentPlayer;
        statusMessage = "Waiting for response...";
      });

      // Call the API to validate the move and update the board
      final response = await http.post(
        Uri.parse('https://your-tic-tac-toe-api.com/move'), // Replace with your API endpoint
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'board': board,
          'player': currentPlayer,
          'move': index,
        }),
      );

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        setState(() {
          board = List<String>.from(result['board']);
          statusMessage = result['status'];
          currentPlayer = result['nextPlayer'] ?? currentPlayer;
        });
      } else {
        setState(() {
          statusMessage = 'Error: Unable to communicate with the server';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tic-Tac-Toe'),
        backgroundColor: Colors.teal[300],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            statusMessage,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemCount: 9,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => _makeMove(index),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.teal[100],
                  ),
                  child: Center(
                    child: Text(
                      board[index],
                      style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
