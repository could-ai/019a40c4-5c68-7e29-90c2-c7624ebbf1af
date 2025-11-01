import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/menu_item.dart';
import 'package:couldai_user_app/widgets/menu_item_card.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  // Sample data for the menu
  final List<MenuItem> menuItems = const [
    MenuItem(
      name: 'Poulet DG',
      description: 'Un plat riche et savoureux avec du poulet, des plantains frits et des légumes.',
      price: 5500,
      imageUrl: 'https://via.placeholder.com/300x200.png/FF9800/FFFFFF?Text=Poulet+DG',
    ),
    MenuItem(
      name: 'Ndolé Royal',
      description: 'Le plat national du Cameroun, servi avec des crevettes, de la viande et du plantain.',
      price: 6500,
      imageUrl: 'https://via.placeholder.com/300x200.png/FF9800/FFFFFF?Text=Ndolé+Royal',
    ),
    MenuItem(
      name: 'Poisson Braisé',
      description: 'Poisson frais mariné et grillé à la perfection, accompagné de frites de plantain.',
      price: 4500,
      imageUrl: 'https://via.placeholder.com/300x200.png/FF9800/FFFFFF?Text=Poisson+Braisé',
    ),
    MenuItem(
      name: 'Jus de Foléré',
      description: 'Boisson rafraîchissante à base de fleurs d\'hibiscus.',
      price: 1000,
      imageUrl: 'https://via.placeholder.com/300x200.png/FF9800/FFFFFF?Text=Jus+de+Foléré',
    ),
    MenuItem(
      name: 'Bissap',
      description: 'Jus de gingembre frais et épicé, parfait pour se désaltérer.',
      price: 1000,
      imageUrl: 'https://via.placeholder.com/300x200.png/FF9800/FFFFFF?Text=Bissap',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notre Menu'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return MenuItemCard(item: menuItems[index]);
        },
      ),
    );
  }
}
