
import '../models/order.dart';

class OrderRepository {
  List<Order> getOrders() {
    return [
      Order(
        orderNumber: '123432',
        itemCount: 2,
        totalAmount: 293.3,
        status: OrderStatus.active,
        imageUrl: 'assets/images/shoe.jpg',
        orderDate: DateTime.now().subtract(Duration(hours: 2)),
      ),
      Order(
        orderNumber: '434234',
        itemCount: 1,
        totalAmount: 600,
        status: OrderStatus.active,
        imageUrl: 'assets/images/laptop.jpg',
        orderDate: DateTime.now().subtract(Duration(hours: 1)),
      ),
      Order(
        orderNumber: '64353',
        itemCount: 2,
        totalAmount: 32.3,
        status: OrderStatus.completed,
        imageUrl: 'assets/images/shoe2.jpg',
        orderDate: DateTime.now().subtract(Duration(hours: 3)),
      ),

      Order(
        orderNumber: '25242',
        itemCount: 5,
        totalAmount: 4932.3,
        status: OrderStatus.cancelled,
        imageUrl: 'assets/images/shoes2.jpg',
        orderDate: DateTime.now().subtract(Duration(hours: 7)),
      ),
    ];
  }
  List<Order> getOrderByStatus(OrderStatus status){
    return getOrders().where((order) => order.status == status).toList();
  }
}
