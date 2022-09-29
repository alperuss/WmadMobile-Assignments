protocol ViewDelegate: AnyObject {
    func render()
}

class Row {
    let cols: [String]

    init(cols: [String]) {
        self.cols = cols
    }
}

class Table: ViewDelegate {
    var rows: [Row]

    init(rows: [Row]) {
        self.rows = rows
    }

    func render() {
        print("All items (\(self.rows.count))")
        print("-------------------------")
        for row in rows {
            print(row.cols.joined(separator: ","))
            print("-------------------------")
        }
    }
}

class View {
    weak var delegate: ViewDelegate?

    func render() {
        guard let delegate = delegate else {
            print("No view.")
            return
        }

        delegate.render()
    }
}

class Student {
    let firstName: String
    let lastName: String
    let gpa: Int

    init(firstName: String, lastName: String, gpa: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.gpa = gpa
    }

    func toRow() -> Row {
        return Row(cols: ["\(self.firstName) \(self.lastName)", String(self.gpa)])
    }
}

func main() {
    let ali = Student(firstName: "Alper", lastName: "Us", gpa: 80)
    let peter = Student(firstName: "Jack", lastName: "Black", gpa: 90)
    let donald = Student(firstName: "Anna", lastName: "Wilson", gpa: 71)
    let william = Student(firstName: "George", lastName: "Washington", gpa: 65)
    let ana = Student(firstName: "David", lastName: "Brown", gpa: 72)

    let students = [alper, jack, anna, george, david].map({ student in student.toRow() })
    let table = Table(rows: students)
    let view = View()
    view.delegate = table
    view.render()
}

main()
