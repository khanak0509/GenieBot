import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];
  final ScrollController _scrollController = ScrollController();

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> _sendMessage() async {
    if (_controller.text.trim().isEmpty) return;

    final userMessage = _controller.text.trim();

    setState(() {
      _messages.add({"sender": "user", "text": userMessage});
    });
    _scrollToBottom(); 
    _controller.clear();

    try {
      final response = await http.post(
        Uri.parse("http://127.0.0.1:8000/chat"),
        headers: {"Content-Type": "application/json"},
        body: json.encode({"query": userMessage}),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        setState(() {
          _messages.add({
            "sender": "bot",
            "text": data["response"] ?? "No response from bot",
          });
        });
      } else {
        setState(() {
          _messages.add({
            "sender": "bot",
            "text": "Error: ${response.statusCode}",
          });
        });
      }
    } catch (e) {
      setState(() {
        _messages.add({
          "sender": "bot",
          "text": "Failed to connect to server: $e",
        });
      });
    }

    _scrollToBottom(); 
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
  backgroundColor: const Color.fromARGB(255, 1, 29, 52),
  automaticallyImplyLeading: true, 
  leading: IconButton(
    icon: const Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () {
      Navigator.pop(context); 
    },
  ),
  title: const Text(
    'GenieBot',
    style: TextStyle(
      color: Color.fromARGB(255, 82, 244, 54),
      fontSize: 27,
    ),
  ),
),
        backgroundColor: const Color.fromARGB(255, 5, 13, 33),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.all(12),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final msg = _messages[index];
                  final isUser = msg["sender"] == "user";

                  return Align(
                    alignment:
                        isUser ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: isUser ? const Color.fromARGB(255, 47, 33, 243) : const Color.fromARGB(255, 151, 4, 117),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        msg["text"]!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Type a message...',
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 16,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onSubmitted: (_) => _sendMessage(), 
                    ),
                  ),
                  const SizedBox(width: 8),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 25,
                    child: IconButton(
                      icon: const Icon(Icons.send, color: Colors.white),
                      onPressed: _sendMessage,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
