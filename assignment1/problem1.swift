print("PROBLEM 1=========================")
print("Enter X and Y :")
if let input1 = readLine(), let input2 = readLine(), let x = Int(input1), let y = Int(input2) {
    print("F(X,Y) = \(x*y + y*y + abs(x-y))")
    print("A = \(pow(Decimal(x), 2) + pow(Decimal(y),3) - 5 )")
}
