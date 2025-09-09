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

# Deploy para Github e Docker Hub caso não funcione localmente
# deploy:
# 	@echo ">> Deploy Github"
# 	git add . | git commit -m 'Deploy via Makefile' | git push origin main
# 	@echo ">> Deploy Docker Hub"
# 	docker tag app-ci-cd:latest lemesvilarinho/app-ci-cd:latest
# 	docker push lemesvilarinho/app-ci-cd:latest