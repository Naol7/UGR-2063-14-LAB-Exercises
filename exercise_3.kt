fun main() {
    print("Enter the number of hours worked: ")
    val hoursWorked = readLine()!!.toDouble()
    print("Enter the hourly rate: ")
    val hourlyRate = readLine()!!.toDouble()

    val regularHours = if (hoursWorked > 40) 40.0 else hoursWorked
    val overtimeHours = if (hoursWorked > 40) hoursWorked - 40 else 0.0
    val overtimeRate = hourlyRate * 1.5

    val totalSalary = (regularHours * hourlyRate) + (overtimeHours * overtimeRate)

    println("The total salary is: $totalSalary")
}
