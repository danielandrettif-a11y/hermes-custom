FROM nousresearch/hermes-agent@sha256:2f1f2f1725e5dc9a61cf6a2dea5aca52a776ec4d022cb29679e6aa3ff303e77a

USER root

RUN npm install -g @openai/codex
