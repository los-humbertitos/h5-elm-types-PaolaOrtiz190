module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


gradeToStatus : Float -> GradeStatus
gradeToStatus grade =
    if grade < 0 then
        Pending

    else if grade >= 7 then
        Approved

    else
        Failed


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map gradeToStatus grades


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        Cancelled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"


airportAction : List AirplaneStatus -> List String
airportAction statuses =
    List.map airplaneScheduleAction statuses
