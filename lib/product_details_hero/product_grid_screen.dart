
import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final String image;
  final double price;

  const Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
  });
}

const List<Product> products = [
  Product(
    id: 1,
    name: 'Headphones',
    image: 'https://img.drz.lazcdn.com/static/bd/p/31a8c9686ef3ac4b730af0233a3b7f12.png_720x720q80.png',
    price: 2500,
  ),
  Product(
    id: 2,
    name: 'Camera',
    image: 'https://picsum.photos/id/250/400/400',
    price: 15000,
  ),
  Product(
    id: 3,
    name: 'Watch',
    image: 'https://img.drz.lazcdn.com/static/bd/p/8bc99a64e5c66833f88c7e4ea4d25728.jpg_720x720q80.jpg_.webp',
    price: 3500,
  ),

  Product(
    id: 4,
    name: 'Shoes',
    image: 'https://picsum.photos/id/21/400/400',
    price: 4200,
  ),

  Product(
    id: 5,
    name: 'Smart Watch',
    image: 'https://prod.static-singerbd.com/products/2025-09/tall/product_yison-smart-watch-sw7-pro-black-1759221620.webp',
    price: 6000,
  ),

  Product(
    id: 6,
    name: 'Perfume',
    image: 'https://smartdeal.com.bd/public/uploads/all/xPSm1OadiCisei2mujn1VaS7IPKxKutFAhebKUVV.jpg',
    price: 1200,
  ),

  Product(
    id: 7,
    name: 'Perfume',
    image: 'https://smartdeal.com.bd/public/uploads/all/xPSm1OadiCisei2mujn1VaS7IPKxKutFAhebKUVV.jpg',
    price: 1200,
  ),


];

class ProductGridPage extends StatelessWidget {
  const ProductGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          final product = products[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailsPage(product: product),
                ),
              );
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Hero(
                      tag: 'product-${product.id}',
                      child: Image.network(
                        product.image,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text('৳ ${product.price}'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// Details Page

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'product-${product.id}',
              child: Image.network(
                product.image,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '৳ ${product.price}',
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Product Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'This is a beautiful product. '
                    'Explore its features and enjoy '
                    'a great shopping experience.',
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
