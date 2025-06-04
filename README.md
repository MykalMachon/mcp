# MCP

Model context protocol test area

## Notes from development 

I had to install this MCP server

```bash
go install github.com/mark3labs/mcphost@latest
```

to start my model I ran the command below:

```bash
mcphost -m ollama:qwen3:4b --config ./mcp-config.json
```
