class TPricingCalculator {
  // Calculate Price based on tax and shipping fees
  static double calculateTotalPrice(
      double productPrice, double tax, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingFees = getShippingFees(location);
    double totalPrice = productPrice + taxAmount + shippingFees;
    return totalPrice;
  }

  // Calculate shipping cost

  static String calculateShippingFees(double productPrice, String location) {
    double shippingFees = getShippingFees(location);
    return shippingFees.toStringAsFixed(2);
  }

  // Calculate tax amount

  static String calculateTaxAmount(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    double taxRate = 0;
    switch (location) {
      case 'Nigeria':
        taxRate = 0.075;
        break;
      case 'Kenya':
        taxRate = 0.065;
        break;
      case 'Ghana':
        taxRate = 0.085;
        break;
      case 'Togo':
        taxRate = 0.095;
        break;
      default:
        taxRate = 0.075;
    }
    return taxRate;
  }

  static double getShippingFees(String location) {
    double shippingFees = 0;
    switch (location) {
      case 'Nigeria':
        shippingFees = 10;
        break;
      case 'Kenya':
        shippingFees = 20;
        break;
      case 'Ghana':
        shippingFees = 30;
        break;
      case 'Togo':
        shippingFees = 40;
        break;
      default:
        shippingFees = 10;
    }
    return shippingFees;
  }

  // Sum all cart values and return the total amount
  static double calculateTotalCartValue(List<Product> products) {
    double totalCartValue = 0;
    for (final product in products) {
      totalCartValue += product.price * product.quantity;
    }
    return totalCartValue;
  }
}

// Calculate Price for a given quantity of a product
double calculatePrice(double price, int quantity) {
  return price * quantity;
}

// Calculate Total Price for a given list of products
double calculateTotalPrice(List<Product> products) {
  double totalPrice = 0;
  for (final product in products) {
    totalPrice += product.price * product.quantity;
  }
  return totalPrice;
}

class Product {
  get price => null;

  get quantity => null;
}

// Calculate Total Price for a given list of products

