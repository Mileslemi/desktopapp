import 'package:desktopapp/data/data.dart';
import 'package:flutter/material.dart';

class YourLibrary extends StatelessWidget {
  const YourLibrary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 10,
                ),
                child: Text(
                  "YOUR LIBRARY",
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              ...yourLibrary.map(
                (e) => ListTile(
                  dense: true,
                  title: Text(
                    e,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  onTap: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
