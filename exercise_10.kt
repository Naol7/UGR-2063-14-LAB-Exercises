fun isPrime(number: Int): Boolean {
    if (number <= 1) {
        return false
    }
    var i = 2
    while (i * i <= number) {
        if (number % i == 0) {
            return false
        }
        i++
    }
    return true
}

fun main() {
    print("Enter the lower bound of the range: ")
    val lower = readLine()!!.toInt()
    print("Enter the upper bound of the range: ")
    val upper = readLine()!!.toInt()

    println("Prime numbers within the range $lower to $upper are:")
    var currentNumber = lower
    while (currentNumber <= upper) {
        if (isPrime(currentNumber)) {
            println(currentNumber)
        }
        currentNumber++
    }
}
