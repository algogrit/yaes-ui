module State exposing (..)

import Types exposing (..)

emptyModel : Model
emptyModel = {}

init : Maybe Model -> ( Model, Cmd Msg )
init savedModel =
    Maybe.withDefault emptyModel savedModel ! []

initialState : Model
initialState =
    {
    }

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []
