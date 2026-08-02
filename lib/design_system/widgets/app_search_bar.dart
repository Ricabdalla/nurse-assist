import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  final String hint;

  const AppSearchBar({
    super.key,
    this.hint = 'Buscar...',
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: const Icon(Icons.search),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}