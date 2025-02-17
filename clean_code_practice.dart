// Applying Open/Closed Principle
abstract class Payment {
  void processPayment(double amount);
}

// Applying Single Responsibility Principle
class CashPayment implements Payment {
  @override
  void processPayment(double amount) {
    print('Processing cash payment of \$${amount.toStringAsFixed(2)}');
  }
}

class CreditPayment implements Payment {
  @override
  void processPayment(double amount) {
    print('Processing credit payment of \$${amount.toStringAsFixed(2)}');
  }
}

// Applying Dependency Inversion Principle
class PaymentProcessor {
  final Payment payment;

  PaymentProcessor(this.payment);

  void executePayment(double amount) {
    payment.processPayment(amount);
  }
}

void main() {
  // Applying Liskov Substitution Principle
  Payment cashPayment = CashPayment();
  PaymentProcessor cashProcessor = PaymentProcessor(cashPayment);
  cashProcessor.executePayment(100.0);

  Payment creditPayment = CreditPayment();
  PaymentProcessor creditProcessor = PaymentProcessor(creditPayment);
  creditProcessor.executePayment(200.0);
}
