-- Função para criar um tabuleiro vazio
function cria_tabuleiro(_)
    return {
        {_, _, _},
        {_, _, _},
        {_, _, _}
    }
end

-- Função para pular linhas
function pula_linha(_)
    for __ = 0, _ do print() end
end

-- Função para exibir a abertura do jogo
function abertura_jogo()
    pula_linha(7)
    print("\t=-=-=-=-=-=-=-=-=-=-=-=-=-=")
    print("\t=       TIC-TAC-TOE       =")
    print("\t=-=-=-=-=-=-=-=-=-=-=-=-=-=")
end

-- Função para verificar o sistema operacional e definir símbolos
function checa_SO()
    home = os.getenv("HOME")
    if home == nil then return "|", "--", " " end
    return "↓", "→", "•"
end

-- Função para receber os nomes dos jogadores
function recebe_nomes()
    jogs = {}
    for _ = 1, 2 do
        msg = "Digite o nome do jogador número %s: "
        io.write(msg:format(_))
        table.insert(jogs, io.read())
    end
    return jogs
end

-- Função para imprimir o tabuleiro
function imprimir_tabuleiro(T, SB, SD)
    abertura_jogo()
    pula_linha(2)
    print(string.format("\t\t    A B C\n\t\t    %s %s %s", SB, SB, SB))
    for _ = 1, 3 do
        io.write(string.format("\t\t %s%s ", _, SD))
        print(table.concat(T[_], " "))
    end
    pula_linha(5)
end

-- Função para ler a jogada do jogador
function ler_jogada(JOGADORES, X)
    checa_jogada = function(jog)
        coluna = string.byte(jog:upper()) - 64
        linha = tonumber(jog:sub(2,2))
        if coluna >= 1 and coluna <= 3 and linha >= 1 and linha <= 3 then
            return coluna, linha
        else
            print("Sua jogada foi inválida! Por favor, jogue novamente...")
            ler_jogada(JOGADORES, X)
        end
    end
    io.write(string.format("%s, Digite sua jogada (Ex: B3, A1, C2...): ", JOGADORES[X]))
    return checa_jogada(io.read())
end

-- Função para preencher o tabuleiro com a jogada do jogador
function preenche_tabuleiro(tabuleiro, POS_VAZIA, PECAS, jogadores, _, COL, LIN)
    if tabuleiro[LIN][COL] == POS_VAZIA then
        tabuleiro[LIN][COL] = PECAS
    else
        msg = "%s, Você tentou uma posição já preenchida. Jogue novamente! "
        print(msg:format(jogadores[_]))
        preenche_tabuleiro(tabuleiro, POS_VAZIA, PECAS, jogadores, _, ler_jogada(jogadores, _))
    end
    return tabuleiro
end

-- Função para verificar se há um vencedor no jogo
function checa_tabuleiro(PECAS, TABULEIRO, JOGADORES, POS_VAZIA)
    vitoria = false
    vitorioso = ''
    cont_diag = 0
    for _, PECA in ipairs(PECAS) do 
        for i = 1, 3 do
            if TABULEIRO[i][1] == PECA and TABULEIRO[i][2] == PECA and TABULEIRO[i][3] == PECA then
                vitoria = true
                vitorioso = JOGADORES[_]
                break
            end
            if TABULEIRO[1][i] == PECA and TABULEIRO[2][i] == PECA and TABULEIRO[3][i] == PECA then
                vitoria = true
                vitorioso = JOGADORES[_]
                break
            end
        end
        if TABULEIRO[1][1] == PECA and TABULEIRO[2][2] == PECA and TABULEIRO[3][3] == PECA then
            vitoria = true
            vitorioso = JOGADORES[_]
            break
        elseif TABULEIRO[1][3] == PECA and TABULEIRO[2][2] == PECA and TABULEIRO[3][1] == PECA then
            vitoria = true
            vitorioso = JOGADORES[_]
            break
        end
    end
    return vitoria, vitorioso
end

-- Função para verificar se o jogo terminou em empate
function checa_velha(TABULEIRO, POS_VAZIA)
    contador = 0
    for _ in  ipairs(TABULEIRO) do
        for __ in ipairs(TABULEIRO[_]) do
            if TABULEIRO[_][__] == POS_VAZIA then
                contador = contador + 1
            end
        end
    end
    if contador > 0 then return false end
    return true
end

-- Início do jogo
abertura_jogo()
SETA_BAIXO, SETA_DIREITA, POS_VAZIA = checa_SO()
tabuleiro = cria_tabuleiro(POS_VAZIA)
jogadores = recebe_nomes()
PECAS = {"X", "O"}
imprimir_tabuleiro(tabuleiro, SETA_BAIXO, SETA_DIREITA)

-- Loop principal do jogo
repeat
    while true do
        for _ in pairs(jogadores) do
            imprimir_tabuleiro(tabuleiro, SETA_BAIXO, SETA_DIREITA)
            tabuleiro = preenche_tabuleiro(tabuleiro, POS_VAZIA, PECAS[_], jogadores, _, ler_jogada(jogadores, _))
            vitoria, vitorioso = checa_tabuleiro(PECAS, tabuleiro, jogadores, POS_VAZIA)
            velha = checa_velha(tabuleiro, POS_VAZIA)
            if velha then break end
            if vitoria then break end
        end
        if velha then 
            print("Que pena, dois mestres jogando... \nAparentemente ninguém ganhou este jogo de Tic-Tac-Toe")
            break
        end
        if vitoria then
            msg_de_vitoria = "PARABÉNS %s! VOCÊ GANHOU O JOGO DA VELHA"
            print(msg_de_vitoria:format(vitorioso:upper()))
            break
        end
    end
    pula_linha(2)
    print("Obrigado por jogar...\nDeseja jogar novamente? (S/N)")
    joga_novamente = io.read()
    if joga_novamente:upper() == "S" then
        joga_novamente = true
    else
        joga_novamente = false
    end
    tabuleiro = cria_tabuleiro(POS_VAZIA)
until not joga_novamente
