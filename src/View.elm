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
  let
    loginForm =
      LoginView.view model.login

    loginFormWithMsg =
      Html.map Login loginForm
  in
    fluidContainer
        [ class "elm-app"
        ]
        [ stylesheet, fontAwesome, loginFormWithMsg
        ]
