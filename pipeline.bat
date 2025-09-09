@echo off
SET CMD=%1

IF "%CMD%"=="test" (
    echo Rodando testes...
    pytest -v
) ELSE IF "%CMD%"=="build" (
    echo Build da imagem Docker...
    docker build -t app_ci_cd:latest .
) ELSE IF "%CMD%"=="up" (
    echo Subindo app com Docker Compose...
    docker-compose up -d
) ELSE IF "%CMD%"=="down" (
    echo Derrubando containers...
    docker-compose down
) ELSE IF "%CMD%"=="logs" (
    docker logs -f streamlit-app
) ELSE (
    echo Comando não reconhecido. Use: test, build, up, down, logs
)
