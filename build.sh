#!/bin/bash
cd /root
npm config set registry https://registry.npmmirror.com
pnpm install
pnpm run build

