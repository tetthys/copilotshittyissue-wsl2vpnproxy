# copilotshittyissue-wsl2vpnproxy

## What I faced

I'm using a paid VPN.

I found out that copilot suggestion doesn't work often with VPN but copilot chat works.

I don't know the exact reason.

At least this method gave me positive results.

## How to use it

### 1. build and run container

```
bash ./build.sh
```

```
bash ./run.sh
```

### 2. configure vscode proxy setting

```
Go to Preferences > Settings > Application > Proxy
```

Then follow the screenshot

<a href="https://ibb.co/LvCv9QS"><img src="https://i.ibb.co/qxRxm0B/2024-05-12-185422.png" alt="2024-05-12-185422" border="0"></a>

### 3. restart vpn or network and reload vscode

It works now.