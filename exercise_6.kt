fun sortArray(arr: IntArray): IntArray {
    arr.sort()
    return arr
}

fun main() {
    val array = intArrayOf(5, 3, 8, 4, 2)
    val sortedArray = sortArray(array)
    println("Sorted array: ${sortedArray.joinToString(", ")}")
}
