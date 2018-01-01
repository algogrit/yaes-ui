module Types exposing (..)

import Login.Types as LoginTypes

type alias Model =
    { login: LoginTypes.Model
    }

type Msg
    = NoOp
    | Login LoginTypes.Msg
