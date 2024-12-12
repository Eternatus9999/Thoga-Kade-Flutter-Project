class Order{
   String id;
   String item;
   double qty;
   double totalPrice;

  Order(this.id, this.item, this.qty, this.totalPrice);

  String toString() => 'id: $id, item: $item, qty: $qty, totalPrice: $totalPrice |';
}