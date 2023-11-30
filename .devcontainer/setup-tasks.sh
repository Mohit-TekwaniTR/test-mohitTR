mkdir -p .vscode

cat <<EOL > .vscode/tasks.json

{
    "version": "2.0.0",
    "tasks": [
      {
        "label": "openFolder",
        "type": "shell",
        "command": "code",
        "args": ["workspace/../content/event_bus.md"],
        "presentation": {
          "echo": true,
          "reveal": "always",
          "focus": false,
          "panel": "shared"
        }
      }
    ]
  }





EOL

code -r openFolder

