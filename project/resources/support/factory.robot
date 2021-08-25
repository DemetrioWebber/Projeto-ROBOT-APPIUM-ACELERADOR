* Settings *
Documentation           Criar dados dinâmicos e Acessar dados estáticos

Library                 OperatingSystem
Library                 FakerLibrary


* Keywords *
Get JSON
    [Arguments]         ${file_name}

    ${file}         Get File            ${EXECDIR}/resources/fixtures/${file_name}
    ${super_var}    Evaluate            json.loads($file)           json

    [return]        ${super_var}


Criar Email e Senha Dinâmicos

    ${email_dinamico}       FakerLibrary.Email
    ${senha_dinamica}       FakerLibrary.Password   length=10

    [return]    ${email_dinamico}   ${senha_dinamica}


Criar Dados Para Cadastro

    ${email_dinamico}           FakerLibrary.Email
    ${senha_dinamica}           FakerLibrary.Senha       length=10
    ${cpf_dinamico}             FakerLibrary.CPF
    ${celular_dinamico}         FakerLibrary.Celular
    ${nome_dinamico}            FakerLibrary.Nome

    [return]    ${email_dinamico}   ${senha_dinamica}   ${cpf_dinamico}    ${celular_dinamico}    ${nome_dinamico}