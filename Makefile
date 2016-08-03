.PHONY: help neo4j-dev

help: ## Print this help text
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

neo4j-dev: ## Build spacecowboy/neo4j-dev:latest image
	docker build --pull -t spacecowboy/neo4j-dev:latest neo4j-dev
