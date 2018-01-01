module Login.State exposing (..)

import Login.Rest exposing (postLogin)
import Login.Types exposing (..)

credentials : Credentials
credentials =
  Credentials "" ""

model : Model
model =
  Model credentials ""

updateCredentials : CredentialMsg -> Credentials -> Credentials
updateCredentials msg model =
  case msg of
    CredentialName name ->
      { model | name = name }

    CredentialPassword password ->
      { model | password = password }


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Name name ->
      { model | credentials = updateCredentials (CredentialName name) model.credentials }
        ! []

    Password password ->
      { model | credentials = updateCredentials (CredentialPassword password) model.credentials }
        ! []

    Submit ->
      (model, postLogin model)

    Login (Ok token) ->
      (Model model.credentials token, Cmd.none)

    Login (Err _) ->
      (model, Cmd.none)
