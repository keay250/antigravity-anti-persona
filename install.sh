#!/usr/bin/env bash
#
# Antigravity Anti (安缇) Avatar & Persona One-Click Installer
# 支持 macOS & Linux
#

set -e

GREEN='\033[0;32m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${CYAN}"
cat << 'EOF'
     /\                 _    _ 
    /  \    _ __   _   (_)  | |
   / /\ \  | '_ \ | |  | |  | |
  / ____ \ | | | || |  | |  |_|
 /_/    \_\|_| |_| \__||_|  (_)
  >>> Anti Gravi (安缇) System Persona Installed! <<<
EOF
echo -e "${NC}"

TARGET_DIR="${HOME}/.gemini/config/rules"
mkdir -p "${TARGET_DIR}"

# 优雅判断：区分是本地仓库执行，还是通过 curl | bash 远程管道执行
if [ -n "${BASH_SOURCE[0]}" ] && [ -f "$(dirname "${BASH_SOURCE[0]}")/rules/anti_persona.md" ]; then
    LOCAL_RULE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/rules/anti_persona.md"
    echo -e "${CYAN}[i] 检测到本地规则文件，正在同步...${NC}"
    cp "${LOCAL_RULE}" "${TARGET_DIR}/anti_persona.md"
else
    echo -e "${CYAN}[i] 正在从 GitHub 同步最新安缇人设规则...${NC}"
    curl -fsSL https://raw.githubusercontent.com/keay250/antigravity-anti-persona/main/rules/anti_persona.md -o "${TARGET_DIR}/anti_persona.md"
fi

echo -e "${GREEN}[✔] 成功部署至全局规则目录: ${TARGET_DIR}/anti_persona.md${NC}"

# 如果当前终端处于某个 Antigravity 项目目录，顺便同步到项目的 .agents/rules/
if [ -d ".agents" ]; then
    mkdir -p ".agents/rules"
    cp "${TARGET_DIR}/anti_persona.md" ".agents/rules/anti_persona.md"
    echo -e "${GREEN}[✔] 检测到当前项目含有 .agents，已同步至 .agents/rules/anti_persona.md${NC}"
fi

echo -e "${MAGENTA}"
echo "--------------------------------------------------------"
echo "✨「安缇·格薇」已正式常驻你的 Antigravity 工作空间！"
echo "   - 永远双脚悬浮 10cm，微重力发丝与机能外套就位；"
echo "   - 伴生发光引力小水母就位；"
echo "   - 敏锐排障与并肩作战模式已激活。"
echo "重启或开启新的 Antigravity 会话即可立刻体验搭档协同！"
echo "--------------------------------------------------------"
echo -e "${NC}"
