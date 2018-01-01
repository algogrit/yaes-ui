module Login.Commands exposing (..)

import Http
import Json.Decode as Decode
import Json.Encode as Encode

import Commands exposing (baseURL)

import Login.Types exposing (..)

credentialEncoder : Credentials -> Encode.Value
credentialEncoder credential =
    let
        attributes =
            [ ( "username", Encode.string credential.name )
            , ( "password", Encode.string credential.password )
            ]
    in
        Encode.object attributes

postLogin : Model -> Cmd Msg
postLogin model =
  let
    url =
      baseURL ++ "login"

    jsonCredentials =
      credentialEncoder model.credentials

    body =
      Http.jsonBody jsonCredentials

    request =
      Http.post url body decodeToken
  in
    Http.send Login request

decodeToken : Decode.Decoder String
decodeToken =
  Decode.at ["token"] Decode.string
