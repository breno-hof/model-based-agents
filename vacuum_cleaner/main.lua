-- Estado inicial do ambiente
local environment = {
    A = "sujo",
    B = "sujo"
}

-- Estado interno do agente
local agent = {
    current_position = "A",
    last_position = nil
}

-- Função para verificar o estado atual do ambiente
local function is_dirty(position)
    return environment[position] == "sujo"
end

-- Função para limpar a célula atual
local function clean(position)
    print("Limpando posição " .. position)
    environment[position] = "limpo"
end

-- Função para mover o agente
local function move_to_next_position()
    if agent.current_position == "A" then
        agent.last_position = agent.current_position
        agent.current_position = "B"
    else
        agent.last_position = agent.current_position
        agent.current_position = "A"
    end
    print("Movendo para posição " .. agent.current_position)
end

-- Função principal do agente
local function agent_action()
    if is_dirty(agent.current_position) then
        clean(agent.current_position)
    else
        move_to_next_position()
    end
end

-- Simulação do agente
for i = 1, 5 do
    print("Iteração " .. i)
    agent_action()
    -- Exibir o estado do ambiente
    print("Estado do ambiente: A=" .. environment["A"] .. ", B=" .. environment["B"])
    print("Posição atual do agente: " .. agent.current_position)
    print("-------")
end
