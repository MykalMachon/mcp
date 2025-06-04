FROM alpine

RUN apk add --no-cache \
		bash \
		curl \
		jq \
		python3 \
		py3-pip

# install uv 
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# install npm and npx via webi 
RUN curl -sS https://webi.sh/node | sh;

# install golang 
RUN curl -sS https://webi.sh/golang | sh; 

# install ollama 
RUN curl -sSfL https://ollama.com/download | sh

# install the mcp server 
RUN go install github.com/mark3labs/mcphost@latest 

# install the qwen3 model 
RUN ollama pull qwen3:4b

COPY ./mcp-config.json /mcp-config.json

CMD [ "sleep", "infinity" ]
