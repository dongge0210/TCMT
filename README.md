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

- 三个子模块仓库均已创建并推送（client 用 dev 分支，server/viewer 用 main）。

