# Paperclip 简体中文界面补丁

为 [Paperclip](https://github.com/paperclipai/paperclip) 提供简体中文界面补丁。补丁基于上游提交 `0f14d261233c545aa6a8a38ec253c498a5130fff`，通过 i18next 增加简体中文和英文 UI 文案、语言偏好记忆及账户菜单语言切换。

## 覆盖范围

- 侧边栏导航、分区、状态徽标和辅助标签
- 账户菜单、外观切换和组织切换器
- Dashboard 指标、提示、图表标题和空状态
- 引导页主要文案
- 浏览器语言初始匹配；手动选择保存在当前浏览器

当前补丁集中在上述常用界面，Paperclip 的其他页面仍使用上游已有文案。组织名、用户输入和其他动态内容不会被翻译。

## 应用

先检出补丁所基于的上游提交，在 Paperclip 仓库根目录执行：

```bash
git checkout 0f14d261233c545aa6a8a38ec253c498a5130fff
git apply /path/to/paperclip-zh-cn.patch
```

然后按 Paperclip 上游说明安装依赖并构建、运行这个源码副本。例如：

```bash
pnpm install
pnpm build
pnpm paperclipai run
```

补丁修改 UI 源码，不会改变独立安装的 `paperclipai run` 全局 CLI。运行补丁构建出的实例后，打开账户菜单并选择“简体中文”；所选语言保存在浏览器本地。

依赖和构建命令请以 [Paperclip 上游 README](https://github.com/paperclipai/paperclip#readme) 为准。本补丁不附带上游源代码或构建产物。

## 验证

测试、构建和回滚结果见 [`VERIFICATION.txt`](VERIFICATION.txt)。

## 回滚

在 Paperclip 仓库根目录运行：

```bash
bash /path/to/ROLLBACK.sh .
```

也可以直接反向应用补丁：

```bash
git apply --reverse /path/to/paperclip-zh-cn.patch
```

回滚前请确保补丁相关文件没有需要保留的未提交编辑；脚本会在确认反向补丁可应用后执行回滚。

## 许可

本补丁依照 MIT License 发布。Paperclip 上游项目及其商标仍归各自权利人所有。
