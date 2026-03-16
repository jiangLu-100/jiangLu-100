#!/bin/bash

# GitHub个人主页部署脚本

echo "🚀 部署GitHub个人主页..."

# 设置用户名和邮箱
git config --global user.name "jiangLu"
git config --global user.email "604599925@qq.com"

# 初始化仓库
git init
git add README.md

# 提交更改
git commit -m "feat: 创建个人主页README"

# 设置远程仓库（如果不存在则创建）
echo "📦 连接到GitHub仓库..."
git remote add origin git@github.com:jiangLu-100/jiangLu-100.git || true
git remote set-url origin git@github.com:jiangLu-100/jiangLu-100.git

# 检查是否已有该仓库
echo "🔍 检查远程仓库是否存在..."
if git ls-remote --exit-code origin &>/dev/null; then
    echo "✅ 远程仓库已存在，强制推送..."
    git push -u origin main --force
else
    echo "🆕 创建新仓库（需要先在GitHub网页创建）"
    echo "请先在GitHub网页创建仓库：https://github.com/jiangLu-100"
    echo "创建名为 'jiangLu-100' 的仓库"
    echo "然后重新运行此脚本"
fi

echo "🎉 完成！访问：https://github.com/jiangLu-100"