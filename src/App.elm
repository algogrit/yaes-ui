port module App exposing (..)

import Html exposing (..)

import State exposing (..)
import Types exposing (..)
import View exposing (..)

port setStorage : Model -> Cmd msg

updateWithStorage : Msg -> Model -> ( Model, Cmd Msg )
updateWithStorage msg model =
    let
        ( newModel, cmds ) =
            update msg model
    in
        ( newModel
        , Cmd.batch [ setStorage newModel, cmds ]
        )

main : Program (Maybe Model) Model Msg
main =
    Html.programWithFlags
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = rootView
        }
