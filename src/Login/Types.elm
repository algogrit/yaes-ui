module Login.Types exposing (..)

import Http

type alias Credentials =
  { name : String
  , password : String
  }

type alias Model =
  { credentials: Credentials
  , token : String
  }

type Msg
    = Name String
    | Password String
    | Submit
    | Login (Result Http.Error String)

type CredentialMsg
    = CredentialName String
    | CredentialPassword String
