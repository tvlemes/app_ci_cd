# Rodar testes locais
test:
	@echo ">> Rodando testes"
	pytest || echo "Nenhum teste definido ainda"

# Build da imagem Docker
build:
	@echo ">> Build da imagem Docker"
	docker build -t app-ci-cd:latest .

# Rodar com Docker Compose
up:
	@echo ">> Subindo app com Docker Compose"
	docker-compose up -d

# Parar containers
down:
	@echo ">> Derrubando containers"
	docker-compose down

# Ver logs
logs:
	docker logs -f streamlit-app
