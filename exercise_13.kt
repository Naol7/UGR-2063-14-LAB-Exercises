class Triangle(val side1: Double, val side2: Double, val side3: Double) {
    fun determineType(): String {
        return when {
            side1 == side2 && side2 == side3 -> "Equilateral"
            side1 == side2 || side2 == side3 || side1 == side3 -> "Isosceles"
            else -> "Scalene"
        }
    }
}

fun main() {
    val triangle = Triangle(3.0, 4.0, 5.0)
    println("Type of the triangle: ${triangle.determineType()}")
}
