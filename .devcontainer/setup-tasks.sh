#!/bin/bash

mkdir -p .vscode
cat <<EOL >.vscode/tasks.json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "openModel",
            "type": "shell",
            "command": "bash",
            "args": [
                "-x",
                ".devcontainer/setup-tasks.sh"
            ],
            "group": {
                "kind": "build",
                "isDefault": true
            },
            "runOptions": {
                "runOn": "folderOpen"
            }
        }
    ]
}
EOL

cat <<EOL >.vscode/settings.json
{
    "task.allowAutomaticTasks": "on"
}
EOL

FILE_TO_OPEN="workspace/../content/event_bus.md"
code --goto "$FILE_TO_OPEN"
