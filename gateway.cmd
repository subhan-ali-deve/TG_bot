@echo off
rem OpenClaw Gateway (v2026.2.6-3)
set PATH=C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files\cursor\resources\app\bin;C:\Program Files\nodejs\;C:\Program Files\Docker\Docker\resources\bin;C:\ffmpeg\bin;C:\Users\Subhan Ali\AppData\Local\Programs\Python\Python313\Scripts\;C:\Users\Subhan Ali\AppData\Local\Programs\Python\Python313\;C:\Users\Subhan Ali\AppData\Local\Programs\Python\Launcher\;C:\Users\Subhan Ali\AppData\Local\Microsoft\WindowsApps;C:\Users\Subhan Ali\AppData\Local\Programs\Git\cmd;C:\Users\Subhan Ali\AppData\Roaming\npm;C:\Users\Subhan Ali\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\Subhan Ali\.deno\bin;C:\Users\Subhan Ali\AppData\Local\Programs\Ollama
set OPENCLAW_GATEWAY_PORT=18789
set OPENCLAW_GATEWAY_TOKEN=7e127df48f77b05aaaa6411d6bdac73cf918cc8b5253aa56
set OPENCLAW_SYSTEMD_UNIT=openclaw-gateway.service
set OPENCLAW_SERVICE_MARKER=openclaw
set OPENCLAW_SERVICE_KIND=gateway
set OPENCLAW_SERVICE_VERSION=2026.2.6-3
"C:\Program Files\nodejs\node.exe" "C:\Users\Subhan Ali\AppData\Roaming\npm\node_modules\openclaw\dist\index.js" gateway --port 18789
