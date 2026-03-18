#!/bin/bash

# GitHub议题创建脚本
# 山羊座转型社群自动发布工具

echo "📝 GitHub转型议题创建工具"
echo "================================"

ISSUE_DIR="~/github-profile/转型议题"
mkdir -p "${ISSUE_DIR}"

echo ""
echo "📋 选择议题类型："
echo "1. 转型困惑 - 🧩 具体问题讨论"
echo "2. 学习分享 - 📚 学习收获总结" 
echo "3. 项目求助 - 🚀 项目实践问题"
echo "4. 经验交流 - 💬 转型经历分享"
echo ""

read -p "选择类型 (1-4): " ISSUE_TYPE

case $ISSUE_TYPE in
    1)
        ISSUE_TITLE_PREFIX="转型困惑"
        ISSUE_EMOJI="🧩"
        ;;
    2)
        ISSUE_TITLE_PREFIX="学习分享"
        ISSUE_EMOJI="📚"
        ;;
    3)
        ISSUE_TITLE_PREFIX="项目求助"
        ISSUE_EMOJI="🚀"
        ;;
    4)
        ISSUE_TITLE_PREFIX="经验交流"
        ISSUE_EMOJI="💬"
        ;;
    *)
        echo "❌ 无效选择"
        exit 1
        ;;
esac

# 获取议题标题
read -p "议题标题: " USER_TITLE
read -p "议题标签（逗号分隔）: " USER_TAGS

DATE_TAG=$(date "+%Y%m%d")
ISSUE_FILENAME="${DATE_TAG}_${ISSUE_TITLE_PREFIX}_${USER_TITLE// /_}.md"
ISSUE_FILE="${ISSUE_DIR}/${ISSUE_FILENAME}"

# 创建议题文件
echo "# ${ISSUE_EMOJI} ${ISSUE_TITLE_PREFIX}：${USER_TITLE}" > "${ISSUE_FILE}"
echo "" >> "${ISSUE_FILE}"
echo "> 山羊座转型交流 | $(date '+%Y-%m-%d %H:%M')" >> "${ISSUE_FILE}"
echo "" >> "${ISSUE_FILE}"

echo "📝 请输入议题内容（Ctrl+D 完成输入）："
echo ""

CONTENT=""
while IFS= read -r line; do
    CONTENT+="${line}\n"
done

echo "${CONTENT}" >> "${ISSUE_FILE}"

# 添加标签和元信息
echo "" >> "${ISSUE_FILE}"
echo "## 🔖 标签" >> "${ISSUE_FILE}"
echo "" >> "${ISSUE_FILE}"

IFS=',' read -ra TAG_ARRAY <<< "$USER_TAGS"
for tag in "${TAG_ARRAY[@]}"; do
    echo "- \`${tag// /}\`" >> "${ISSUE_FILE}"
done

echo "" >> "${ISSUE_FILE}"
echo "## 📊 议题信息" >> "${ISSUE_FILE}"
echo "" >> "${ISSUE_FILE}"
echo "| 项目 | 内容 |" >> "${ISSUE_FILE}"
echo "|------|------|" >> "${ISSUE_FILE}"
echo "| **创建时间** | $(date '+%Y-%m-%d %H:%M:%S') |" >> "${ISSUE_FILE}"
echo "| **创建方式** | 山羊座议题工具 |" >> "${ISSUE_FILE}"
echo "| **议题类型** | ${ISSUE_TITLE_PREFIX} |" >> "${ISSUE_FILE}"
echo "| **关联主页** | [jiangLu-100](https://github.com/jiangLu-100) |" >> "${ISSUE_FILE}"

echo "" >> "${ISSUE_FILE}"
echo "---" >> "${ISSUE_FILE}"
echo "*这是一个技术转型讨论议题，欢迎分享你的经验、建议或类似的思考！*" >> "${ISSUE_FILE}"

echo ""
echo "✅ 议题创建成功！"
echo "📄 文件：${ISSUE_FILE}"
echo ""
echo "🚀 下一步操作："
echo "1. 编辑完善议题内容"
echo "2. 推送到GitHub仓库的Issues"
echo "3. 分享给可能需要的人"
echo ""
echo "📤 手动发布步骤："
echo "1. 访问：https://github.com/jiangLu-100/jiangLu-100/issues/new"
echo "2. 复制上方议题内容"
echo "3. 粘贴并发布"
echo ""
echo "🤖 自动发布（需GitHub Token）暂时未实现，可以后续扩展"