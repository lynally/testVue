#!/bin/bash
# 检查 yarn 是否安装
if ! command -v yarn &> /dev/null
then
    echo "Error: Yarn is not installed."
    exit 1
fi
# 安装依赖
yarn install
# 构建项目
yarn build
