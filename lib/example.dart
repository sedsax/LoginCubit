import 'package:flutter/material.dart';
import 'package:login_cubit/new_orders.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onButtonPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildContent(int index) {
    switch (index) {
      case 0:
        return const Center(child: Text('All Orders', style: TextStyle(color: Colors.black),)); // 
      case 1:
        return const NewOrders();
      case 2:
        return const Text('Doldurulmamış Siparişler İçin İçerik');
      default:
        return const Text('Hata: Geçersiz Dizin');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => _onButtonPressed(0),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _selectedIndex == 0
                            ? const Color(0xFF6f55FF)
                            : const Color(0xFFE9E9E9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      child: Text(
                        'All Orders',
                        style: TextStyle(color: _selectedIndex == 0 ? Colors.white : Colors.black, fontSize: 12),
                      ),
                    ),
                    const SizedBox(width: 7),
                    ElevatedButton(
                      onPressed: () => _onButtonPressed(1),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _selectedIndex == 1
                            ? const Color(0xFF6f55FF)
                            : const Color(0xFFE9E9E9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      child: Text(
                        'New Orders',
                        style: TextStyle(color:_selectedIndex == 1 ? Colors.white : Colors.black, fontSize: 12),
                      ),
                    ),
                    const SizedBox(width: 7),
                    ElevatedButton(
                      onPressed: () => _onButtonPressed(2),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _selectedIndex == 2
                            ? const Color(0xFF6f55FF)
                            : const Color(0xFFE9E9E9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      child: Text(
                        'Unfulfilled Orders',
                        style: TextStyle(color: _selectedIndex == 2 ? Colors.white : Colors.black, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: _buildContent(_selectedIndex),
            ),
          ],
        ),
      ),
    );
  }
}
