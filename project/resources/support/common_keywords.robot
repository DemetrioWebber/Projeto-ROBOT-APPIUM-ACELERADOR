* Settings *
Resource    ../actions/autenticacao/login_actions.robot


* Keywords *
Executar Login e Acessar a Dashboard
    Run Keyword     Escolher Autenticacao por Login
    Run Keyword     Fazer Login Com     demetriotester@gmail.com    tester123
    Run Keyword     Aceitar Termos de Uso
    Run Keyword     Aceitar Compartilhar Localizacao
    Run Keyword     Validar Login na Dashboard