module View exposing (..)

import Types exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

rootView : Model -> Html Msg
rootView model =
    div
        [ class "elm-app"
        ]
        []
