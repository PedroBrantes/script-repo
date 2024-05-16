function show_loading_icon()
    local chars = {'|', '/', '-', '\\'}
    local i = 1
    while true do
        io.write("\rLoading " .. chars[i])
        io.flush()
        i = i % 4 + 1
        os.execute("sleep 0.1")
    end
end

function main()
    local loading_thread = nil
    local success, err = pcall(function()
        loading_thread = coroutine.create(show_loading_icon)
        coroutine.resume(loading_thread)
        -- Simular um processo de carregamento demorado
        os.execute("sleep 5")  -- Simulando um processo de carregamento demorado
        io.write("\nOperação concluída.\n")
    end)

    if not success then
        io.write("\nOperação cancelada.\n")
        os.exit(1)
    end
end

main()

