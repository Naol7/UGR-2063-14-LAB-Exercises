fun hasUniqueCharacters(str: String): Boolean {
    val charSet = mutableSetOf<Char>()
    for (char in str) {
        if (!charSet.add(char)) {
            return false
        }
    }
    return true
}

fun main() {
    val testString = "hello"
    val result = hasUniqueCharacters(testString)
    println("Does \"$testString\" have all unique characters? $result")
}
