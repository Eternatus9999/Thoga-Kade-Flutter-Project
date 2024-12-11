class Item {
   String id;
   String name;
   double pricePerKg;
   double availableQuantity;
   String category;
   String expiryDate;

  Item(this.id, this.name, this.pricePerKg, this.availableQuantity, this.category, this.expiryDate);

  String toString() => 'id: $id, name: $name, pricePerKg: $pricePerKg, availableQuantity: $availableQuantity, category: $category, expiryDate: $expiryDate';
}