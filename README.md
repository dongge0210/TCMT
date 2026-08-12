# TCMT

TCMT 的独立主仓库，三个子项目以 git submodule 引入：

| 子模块 | 说明 | 仓库 |
| --- | --- | --- |
| `TCMT-M-client` | 桌面客户端（C++ / Avalonia） | https://github.com/dongge0210/TCMT-M-client.git |
| `TCMT-M-server` | 数据采集 / 监控后端（Node） | https://github.com/dongge0210/TCMT-M-Server.git |
| `TCMT-M-viewer` | 纯前端展示端 | https://github.com/dongge0210/TCMT-M-Viewer.git |

## 克隆

```bash
git clone --recurse-submodules <本仓库地址>
```

## 说明

- `TCMT-M-viewer` 的 GitHub 仓库尚待创建并推送，创建完成后
  `.gitmodules` 中的 URL 即可直接使用。
- `TCMT-M-client`（dev 分支）和 `TCMT-M-server`（main 分支）各有 1 个
  未推送的提交，需先推送到各自远端，子模块 pin 的 commit 才能在远端取到。
