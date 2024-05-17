fun main() {
    println("Enter the lengths of the three sides of the triangle:")
    print("Side 1: ")
    val side1 = readLine()!!.toDouble()
    print("Side 2: ")
    val side2 = readLine()!!.toDouble()
    print("Side 3: ")
    val side3 = readLine()!!.toDouble()

    // Check if the sides form a valid triangle
    if (side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1) {
        // Determine the type of triangle
        if (side1 == side2 && side2 == side3) {
            println("The triangle is equilateral.")
        } else if (side1 == side2 || side2 == side3 || side1 == side3) {
            println("The triangle is isosceles.")
        } else {
            println("The triangle is scalene.")
        }
    } else {
        println("The lengths do not form a valid triangle.")
    }
}
