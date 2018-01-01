module View exposing (..)

import Bulma.CDN exposing (stylesheet)
import Bulma.CDN exposing (fontAwesome)

import Bulma.Layout as Layout exposing ( fluidContainer )

import Html exposing (..)
import Html.Attributes exposing (..)

import Types exposing (..)

import Login.View as LoginView

rootView : Model -> Html Msg
rootView model =
    fluidContainer
        [ class "elm-app"
        ]
        [ stylesheet, fontAwesome, LoginView.view model.login
        ]
