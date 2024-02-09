-- Função para exibir a mensagem de abertura do jogo
function exibir_abertura_do_jogo()
    print("----------------------------------------\n| Bem-vindo ao Jogo Adivinhe o Número. |\n----------------------------------------\n")
end

-- Função para exibir o manual do jogo, se o usuário desejar
function exibir_manual()
    print("-> Você deseja ler o manual do jogo? (sim ou nao)")
    local resposta = io.read()
    if resposta == "sim" then
        print([[
            Este é um jogo de adivinhação onde o computador irá
            escolher um número aleatório, que o jogador precisará
            descobrir por meio de tentativa e erro.
        ]])
    end
end

-- Função para criar um número aleatório
function criar_numero_aleatorio()
    -- Use os.time() como semente padrão para a função math.randomseed
    math.randomseed(os.time())
    return math.random(1, 100)
end

-- Função para capturar o palpite do jogador
function capturar_palpite()
    while true do
        print("\n-> Digite um palpite: ")
        local palpite = tonumber(io.read("*line"))
        if palpite and palpite >= 1 and palpite <= 100 then
            return palpite
        else
            print("-> Por favor, digite um número válido entre 1 e 100.")
        end
    end
end

-- Função para comparar o palpite do jogador com o número do computador
function comparar_com_palpite(num_do_computador, palpite)
    if num_do_computador == palpite then
        return true
    else
        local variacao = (num_do_computador < palpite) and "maior" or "menor"
        print("\n-> Não foi este número que eu estava pensando :(")
        print("-> O número que você disse é " .. variacao .. " que o número que estava pensando\n")
        return false
    end
end

-- Função para imprimir interações com o jogador
function imprimir_interacao(numero, resultado_da_tentativa)
    if resultado_da_tentativa then
        print("-> Parabéns, eu realmente estava pensando no número " .. numero)
    else
        print("-> Que tal tentar novamente?\nDigite seu palpite:")
    end
    return not resultado_da_tentativa
end

-- Função que representa uma rodada de jogo
function executar_partida(numero_secreto)
    local palpite = capturar_palpite()
    return imprimir_interacao(numero_secreto, comparar_com_palpite(numero_secreto, palpite))
end

-- Função principal que controla o loop do jogo
function executar_loop_principal()
    local numero_secreto = criar_numero_aleatorio()
    local continua_jogando = true
    while continua_jogando do
        continua_jogando = executar_partida(numero_secreto)
    end
end

-- Função que representa o jogo completo, incluindo a opção de jogar novamente
function executar_jogo()
    local repete_jogo = true
    repeat
        executar_loop_principal()
        print("-> Deseja jogar novamente? (s ou n)\n")
        local resposta = io.read()
        if resposta == "n" then
            repete_jogo = false
        end
    until not repete_jogo
end

-- Executar a abertura do jogo, manualmente ou não, e iniciar o jogo
exibir_abertura_do_jogo()
-- exibir_manual()
executar_jogo()
