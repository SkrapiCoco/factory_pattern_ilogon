// Define an abstract class for the product
abstract class Product {
  void display();
}

// Define concrete classes that implement the abstract class
class ConcreteProductA implements Product {
  @override
  void display() {
    print('ConcreteProductA');
  }
}

class ConcreteProductB implements Product {
  @override
  void display() {
    print('ConcreteProductB');
  }
}

// Define a factory class that creates the products based on input
class ProductFactory {
  static Product createProduct(String type) {
    switch(type) {
      case 'A':
        return ConcreteProductA();
      case 'B':
        return ConcreteProductB();
      default:
        throw Exception('Invalid product type');
    }
  }
}

// Usage example
void main() {
  Product productA = ProductFactory.createProduct('A');
  productA.display(); // Output: ConcreteProductA

  Product productB = ProductFactory.createProduct('B');
  productB.display(); // Output: ConcreteProductB
}