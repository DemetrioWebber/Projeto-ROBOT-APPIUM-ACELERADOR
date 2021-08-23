* Settings *
Documentation       Passos login na aplicação GMC

Library     BuiltIn

* Variables *
${input_email}              xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.EditText
${input_password}           xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.EditText
${txt_signin}               Sign In
${btn_aceitar}              id=com.gm.gmc.nomad.ownership:id/acceptButton
${btn_permitir_localiza}    id=com.android.permissioncontroller:id/permission_allow_one_time_button
${GLOBAL_TIMEOUT}           25


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
    Click Element                           ${btn_aceitar}
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

Executar Login e Acessar a Dashboard
    Run Keyword     Escolher Autenticacao por Login
    Run Keyword     Fazer Login Com     demetriotester@gmail.com    tester123
    Run Keyword     Aceitar Termos de Uso
    Run Keyword     Aceitar Compartilhar Localizacao
    Run Keyword     Validar Login na Dashboard
