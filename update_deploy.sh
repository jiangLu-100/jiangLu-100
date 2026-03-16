#!/bin/bash

echo "🚀 部署双语GitHub个人主页..."

# 切换到工作目录
cd ~/github-profile

# 使用双语README
cp README_BILINGUAL.md README.md

# Git配置（以防万一）
git config --global user.name "jiangLu"
git config --global user.email "604599925@qq.com"

# 设置默认分支为main
git config --global init.defaultBranch main

# 如果已经初始化，重命名分支
if git rev-parse --git-dir > /dev/null 2>&1; then
    git branch -m master main 2>/dev/null || true
fi

# 添加并提交更改
git add README.md
git commit -m "feat: 更新双语个人主页 - 山羊座工作室 | GoatBytes Studio"

# 设置远程仓库URL
git remote remove origin 2>/dev/null || true
git remote add origin git@github.com:jiangLu-100/jiangLu-100.git

echo "📤 推送到GitHub..."
echo "正在连接到: git@github.com:jiangLu-100/jiangLu-100.git"

# 强制推送（覆盖现有内容）
echo "使用强制推送覆盖现有仓库..."
git push -u origin main --force

echo ""
echo "✅ 部署完成！"
echo "🌐 访问你的个人主页: https://github.com/jiangLu-100"
echo ""
echo "📊 统计数据可能需要几小时才能显示"
echo "🏢 工作室: 山羊座工作室 | GoatBytes Studio"