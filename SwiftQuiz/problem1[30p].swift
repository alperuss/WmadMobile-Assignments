enum WeekDay {
    case MONDAY
    case TUESDAY
    case WEDNESDAY
    case THURSDAY
    case FRIDAY
    case SATURDAY
    case SUNDAY
}
func getNumberOfDay(weekDay: WeekDay) -> Int  {
    if (weekDay == WeekDay.MONDAY) {
        return 1
    }
    else if(weekDay == WeekDay.TUESDAY){
        return 2
    }
    else if(weekDay == WeekDay.WEDNESDAY){
        return 3
    }
    else if(weekDay == WeekDay.THURSDAY){
        return 4
    }
    else if(weekDay == WeekDay.FRIDAY){
        return 5
    }
    else if(weekDay == WeekDay.SATURDAY){
        return 6
    }
    else if(weekDay == WeekDay.SUNDAY){
        return 7
    }
    else{
        return 0
    }

}

let listOfDays = [("Monday",getNumberOfDay(weekDay: .MONDAY)),
                  ("Tuesday",getNumberOfDay(weekDay: .TUESDAY)),
                  ("Wednesday",getNumberOfDay(weekDay: .WEDNESDAY)),
                  ("Thursday",getNumberOfDay(weekDay: .THURSDAY)),
                  ("Friday",getNumberOfDay(weekDay: .FRIDAY)),
                  ("Saturday",getNumberOfDay(weekDay: .SATURDAY)),
                  ("Sunday",getNumberOfDay(weekDay: .SUNDAY))]

print(listOfDays)
