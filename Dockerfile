FROM nousresearch/hermes-agent@sha256:2f1f2f1725e5dc9a61cf6a2dea5aca52a776ec4d022cb29679e6aa3ff303e77a

USER root

# Codex CLI
RUN npm install -g @openai/codex

# Dependências básicas
RUN apt-get update \
    && apt-get install -y --no-install-recommends curl ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Google Antigravity CLI
RUN curl -fsSL https://antigravity.google/cli/install.sh | bash

CMD ["gateway", "run"]
