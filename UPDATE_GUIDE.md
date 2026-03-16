# 山羊座工作室 | GoatBytes Studio - 更新指南

## 快速访问
- **GitHub主页**: https://github.com/jiangLu-100
- **本地工作目录**: `~/github-profile/`
- **README文件**: `~/github-profile/README.md`

## 如何更新主页

### 方法1：手动编辑后推送
```bash
cd ~/github-profile
# 编辑文件
nano README.md
# 提交并推送
git add README.md
git commit -m "更新主页内容"
git push
```

### 方法2：使用脚本更新
```bash
cd ~/github-profile && ./update_deploy.sh
```

## 文件结构
```
~/github-profile/
├── README.md                   # 当前主页内容
├── README_BILINGUAL.md         # 双语原始模板
├── update_deploy.sh            # 部署脚本
└── UPDATE_GUIDE.md             # 本指南
```

## 常用Git命令
```bash
# 拉取最新更新
git pull

# 查看状态
git status

# 查看提交历史
git log --oneline

# 强制推送（谨慎使用）
git push --force
```

## GitHub统计显示
你的主页使用了GitHub Readme Stats：
- 统计数据可能需要几小时才能完全显示
- 如果看不到统计卡片，可能需要等待GitHub缓存更新

## 扩展功能建议

### 1. 添加项目展示
在README中添加：
```markdown
## 🚀 展示项目

### [项目名称](链接)
- 技术栈：Java, Spring Boot, MySQL
- 简介：项目简要描述
```

### 2. 添加GitHub Actions自动化
在仓库中添加`.github/workflows/`目录，设置自动更新

### 3. 添加博客链接
如果你有技术博客，可以添加：
```markdown
## 📝 技术博客
- [博客标题](链接)
```

## 联系方式
- **GitHub**: https://github.com/jiangLu-100
- **邮箱**: 604599925@qq.com

---
*山羊座工作室 | 最后更新: 2026-03-16*
```