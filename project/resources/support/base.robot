* Settings *
Library     AppiumLibrary

Resource        ./Actions/Autenticacao/login_actions.robot

* Variables *
${btn_continue_location}        id=com.gm.gmc.nomad.ownership:id/continueButton

* Keywords *
Abrir App
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Celularzinho
    ...                 app=${EXECDIR}/app/gmc.apk
    ...                 udid=emulator-5554

    # Checkpoint para garantir que estamos no lugar certo
    Wait Until Element Is Visible       ${btn_continue_location}      10
    Click Text                          United States
    Click Element                       ${btn_continue_location}


Fechar App
    Capture Page Screenshot
    Close Application
