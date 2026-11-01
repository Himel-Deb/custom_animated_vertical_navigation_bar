
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final bool isVisible;
  final int selectedIndex;
  final List<IconData> icons;
  final ValueChanged<int> onItemSelected;

  const CustomNavigationBar({
    super.key,
    required this.isVisible,
    required this.selectedIndex,
    required this.icons,
    required this.onItemSelected,
  });


  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      left: isVisible ? 0 : -60,
      top: 110,
      child: Container(
        height: 230,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 1,
            color: const Color.fromARGB(255, 128, 122, 122),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            icons.length,
            (index) {
              final isSelected = selectedIndex == index;

              return GestureDetector(
                onTap: () {
                  onItemSelected(index);
                },
                child: AnimatedContainer(
                  padding: const EdgeInsets.all(10),
                  duration: const Duration(milliseconds: 400),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? Colors.blueAccent
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    icons[index],
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
