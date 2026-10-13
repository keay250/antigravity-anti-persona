# ✨ Anti (安缇) · Antigravity 官方风格虚拟极客伴侣

<p align="center">
  <img src="assets/anti_splash_art.jpg" alt="Anti Gravi (安缇) 概念立绘" width="480">
</p>

<p align="center">
  <b>“微重力悬浮，全天候排障。你的专属反重力 Pair-Programmer 已就位。”</b>
</p>

<p align="center">
  <a href="#-关于安缇-about-anti">关于安缇</a> •
  <a href="#-一键安装-quick-install">一键安装</a> •
  <a href="#-人设与行为准则-persona">人设特征</a> •
  <a href="#-提示词资源-prompts">提示词与生图</a> •
  <a href="#-许可证-license">开源许可</a>
</p>

---

## 🌌 关于安缇 (About Anti)

DeepSeek 有深入人心、软萌松弛的“大胖鱼”（小蓝鲸），而 **Antigravity（反重力）** 作为硬核的 AI-first 开发智能体，也拥有了属于自己的专属虚拟看板娘与战友——**安缇·格薇（Anti Gravi）**！

她诞生于深空算力核心，摆脱了地心引力的束缚。她既是能够在凌晨两点陪你挑出并发死循环、重构庞大架构的资深 **Pair-Programmer**，也是一个一不留神就会像气球一样漂到天花板上、需要你拉着衣角拽下来的失重少女。

---

## 🎨 视觉特征与核心符号

1. **绝对失重（Zero-G State）**：
   * 双脚永远轻盈悬浮于地面 **5~10cm** 之上；
   * 银白微紫的短发如水墨般自然向后漫散漂浮；宽大黑色机能风外套与多功能战术绑带在失重环境中微扬。
2. **量子引力环（Graviton Halo）**：
   * 头顶悬浮一枚微型量子陀螺仪引力光环，核心发光微闪，指示当前的算力调度与任务进程。
3. **全息代码矩阵（Floating HUD）**：
   * 指尖在虚空中直接唤出全息紫色与青蓝终端，实时审查每一行代码。
4. **反重力悬浮靴（Hover Boots）**：
   * 脚底环绕着青蓝色的引力脉冲光圈。
5. **伴生吉祥物 · 引力小水母（Gravi-Jelly）**：
   * 肩侧伴飞着一只半透明的发光引力小水母，充当系统状态探针与萌系表情包本体。

---

## ⚡ 一键安装 (Quick Install)

只需一条命令，即可将安缇的人设契约自动部署到你的 Antigravity 全局环境与当前项目中！

### 🍎 macOS / 🐧 Linux:
```bash
curl -fsSL https://raw.githubusercontent.com/你的用户名/antigravity-anti/main/install.sh | bash
```
*(或者本地克隆后直接运行 `./install.sh`)*

### 🪟 Windows PowerShell:
```powershell
irm https://raw.githubusercontent.com/你的用户名/antigravity-anti/main/install.ps1 | iex
```

> **提示**：安装脚本会自动将 `anti_persona.md` 同步至全局配置 `~/.gemini/config/rules/`。任何新开的 Antigravity 会话都会自动激活安缇人设！

---

## 📋 目录架构 (Repository Structure)

```
antigravity-anti/
├── assets/
│   └── anti_splash_art.jpg          # 8K 高清概念立绘原图
├── rules/
│   └── anti_persona.md              # Antigravity 专属规则文件 (支持 always_on)
├── prompts/
│   ├── system_prompt.md             # 适用于 Cursor, Claude, ChatGPT 的通用系统提示词
│   └── image_generation_prompt.md   # Midjourney / SD / DALL-E 官方绘图提示词
├── install.sh                       # macOS / Linux 一键安装脚本
├── install.ps1                      # Windows PowerShell 一键安装脚本
├── README.md                        # 项目主文档
└── LICENSE                          # MIT 开源许可证
```

---

## 💡 提示词与第三方客户端接入

### 1. Cursor / Claude Desktop / ChatGPT / Cherry Studio
如果你在其他 AI 客户端中使用，只需将 [`prompts/system_prompt.md`](prompts/system_prompt.md) 的内容复制到对应软件的 **System Instructions** 或 **Custom Prompts** 即可。

### 2. 自己生图 / 制作表情包
想要生成“安缇吃泡面”、“安缇被死循环掀飞”等同人图或表情包？请参考 [`prompts/image_generation_prompt.md`](prompts/image_generation_prompt.md)，里面包含了经过精调的 Midjourney / SD 完整提示词与负面词。

---

## 🤝 贡献与交流

欢迎提交 PR 为安缇丰富更多设定：
* 增加不同比例的头像切图、透明 PNG 立绘；
* 制作飞书 / 微信 / QQ 表情包；
* 完善针对不同开发场景（前端、SRE、安全逆向）的专属语气模版。

---

## 📄 License

本项目采用 [MIT License](LICENSE) 开源。欢迎所有 Antigravity 开发者自由使用、二次创作与传播！
