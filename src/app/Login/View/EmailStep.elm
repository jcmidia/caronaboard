module Login.View.EmailStep exposing (emailStep)

import Testable.Html exposing (Html, div, input)
import Testable.Html.Attributes exposing (type_, placeholder, value)
import Testable.Html.Events exposing (onInput, onSubmit)
import Msg as Root
import Login.Msg exposing (Msg(..))
import Login.Model exposing (Model)
import Login.View.Common exposing (loadingOrSubmitButton, renderErrors)


emailStep : Model -> Html Root.Msg
emailStep model =
    div []
        [ renderErrors model.loggedIn
        , input
            [ type_ "email"
            , placeholder "Email"
            , onInput (Root.MsgForLogin << UpdateEmail)
            , value model.email
            ]
            []
        , loadingOrSubmitButton "->" model.registered
        ]