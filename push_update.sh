#!/bin/bash

# 山羊座工作室 - 自动更新脚本
echo "🐐 山羊座工作室 - GitHub更新脚本"
echo "===================================="

cd ~/github-profile

# 检查是否有更改
if [[ -z $(git status --porcelain) ]]; then
    echo "📭 没有需要提交的更改"
    exit 0
fi

# 显示更改
echo "📋 更改内容："
git status --short

# 添加所有文件
echo "📤 添加所有更改..."
git add .

# 自动生成提交信息
DATE=$(date "+%Y-%m-%d")
COMMIT_MSG="更新：转型思考记录 - ${DATE}"

# 如果有参数，使用参数作为提交信息
if [[ $# -gt 0 ]]; then
    COMMIT_MSG="$*"
fi

echo "💾 提交：${COMMIT_MSG}"
git commit -m "${COMMIT_MSG}"

# 推送到GitHub
echo "🚀 推送到GitHub..."
git push

# 完成提示
echo ""
echo "✅ 更新完成！"
echo "🌐 主页：https://github.com/jiangLu-100"
echo "📅 时间：$(date '+%Y-%m-%d %H:%M:%S')"
echo ""
echo "🎯 下次执行："
echo "• 手动执行：./push_update.sh \"你的提交信息\""
echo "• 添加到cron：每天自动执行"