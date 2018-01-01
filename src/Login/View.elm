module Login.View exposing (..)

import Login.Types exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

view : Model -> Html Msg
view model =
  let
    submitButtonModifiers =
      {}
  in
    Html.form [ onSubmit Submit ]
      [ input [ type_ "text", placeholder "Name", onInput Name ] []
      , input [ type_ "password", placeholder "Password", onInput Password ] []
      , button [] [ text "Submit" ]
      ]
