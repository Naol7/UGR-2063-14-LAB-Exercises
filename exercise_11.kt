fun isPalindrome(number: Int): Boolean {
    var num = number
    var reversed = 0
    var original = number

    while (num > 0) {
        val digit = num % 10
        reversed = reversed * 10 + digit
        num /= 10
    }
    return original == reversed
}

fun main() {
    print("Enter a number to check if it's a palindrome: ")
    val number = readLine()!!.toInt()

    if (isPalindrome(number)) {
        println("$number is a palindrome.")
    } else {
        println("$number is not a palindrome.")
    }
}
