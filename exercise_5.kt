fun main() {
    print("Enter the first number: ")
    val num1 = readLine()!!.toDouble()
    print("Enter the second number: ")
    val num2 = readLine()!!.toDouble()
    print("Enter the third number: ")
    val num3 = readLine()!!.toDouble()

    val largest: Double

    if (num1 > num2) {
        if (num1 > num3) {
            largest = num1
        } else {
            largest = num3
        }
    } else {
        if (num2 > num3) {
            largest = num2
        } else {
            largest = num3
        }
    }

    println("The largest number is: $largest")
}
