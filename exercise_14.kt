data class Item(val name: String, val price: Double)

class ShoppingCart {
    private val items = mutableListOf<Item>()

    fun addItem(item: Item) {
        items.add(item)
    }

    fun removeItem(item: Item) {
        items.remove(item)
    }

    fun calculateTotalPrice(): Double {
        return items.sumByDouble { it.price }
    }
}

fun main() {
    val shoppingCart = ShoppingCart()
    val item1 = Item("Book", 15.0)
    val item2 = Item("Phone", 500.0)

    shoppingCart.addItem(item1)
    shoppingCart.addItem(item2)

    println("Total price in the shopping cart: ${shoppingCart.calculateTotalPrice()}")
}
