* Settings *
Documentation       Passos login na aplicação GMC
Library     BuiltIn

Resource    ../_elements/login_elements.robot


* Keywords *
Escolher Autenticacao por Login
    Wait Until Page Contains                SIGN IN     ${GLOBAL_TIMEOUT}
    Click Text                              SIGN IN

Fazer Login Com
    [Arguments]                             ${email}                ${senha}
    Wait Until Page Contains Element        ${input_email}          ${GLOBAL_TIMEOUT}
    Input Text                              ${input_email}          ${email}
    Wait Until Page Contains Element        ${input_password}       ${GLOBAL_TIMEOUT}
    Input Password                          ${input_password}       ${senha}
    Click Text                              ${txt_signin}

Aceitar Termos de Uso
    Wait Until Page Contains                User Terms          ${GLOBAL_TIMEOUT}
    Wait Until Page Contains                Brief               ${GLOBAL_TIMEOUT}
    Wait Until Element Is Visible           ${btn_aceitar}      ${GLOBAL_TIMEOUT}
    Element Should Be Enabled               ${btn_aceitar}
    Click Element                           ${btn_aceitar}
    Wait Until Page Contains                Brief               ${GLOBAL_TIMEOUT}
    Wait Until Element Is Visible           ${btn_aceitar}      ${GLOBAL_TIMEOUT}
    Element Should Be Enabled               ${btn_aceitar}
    Click Element                           ${btn_aceitar}

Aceitar Compartilhar Localizacao
    Wait Until Page Contains                Location-based promotions and offers may be presented within the app. You can adjust your promotion and offer settings within this app's Settings menu.    ${GLOBAL_TIMEOUT}
    Click Text                              OK
    Wait Until Page Contains                Only this time                      ${GLOBAL_TIMEOUT}
    Click Element                           ${btn_permitir_localiza}
    Wait Until Page Contains                Welcome to the new myGMC app        ${GLOBAL_TIMEOUT}
    Click Text                              OK

Validar Login na Dashboard
    Page Should Contain Element             accessibility_id=Account Menu, Opens Account Menu

Validar Dados Invalidos no Login
    Wait Until Page Contains                Incorrect Username or Password       ${GLOBAL_TIMEOUT}
