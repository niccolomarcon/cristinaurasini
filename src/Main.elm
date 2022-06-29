module Main exposing (..)

import Browser exposing (Document, UrlRequest, application)
import Browser.Navigation exposing (Key)
import Element exposing (layout)
import FontAwesome.Styles exposing (css)
import Url exposing (Url)
import WIP exposing (workInProgress)


type alias Flags =
    ()


type alias Model =
    ()


type alias Msg =
    ()


init : Flags -> Url -> Key -> ( Model, Cmd Msg )
init flags url key =
    ( (), Cmd.none )


view : Model -> Document Msg
view model =
    { title = "Cristina Urasini - Dimensione Shiatsu"
    , body = [ css, layout [] workInProgress ]
    }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


onUrlRequest : UrlRequest -> Msg
onUrlRequest urlRequest =
    ()


onUrlChange : Url -> Msg
onUrlChange url =
    ()


main : Program Flags Model Msg
main =
    application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlRequest = onUrlRequest
        , onUrlChange = onUrlChange
        }
