# whxythesis

此**文档类**为武汉学院理工科类毕业论文LaTeX模板。

An Unofficial STEM Graduation Thesis Template **document class** in LaTeX for Wuhan College.

See [VERSION](./VERSION) to get current version.

💡使用 `Debian GNU/Linux` 编写，其他平台可能存在偏差，使用时注意修正。

## 环境要求

为了获得最佳体验，请使用 [TeX Live 2025](https://www.tug.org/texlive/) 或更高版本。

对于 `Debian GNU/Linux`系，请参阅 [此Wiki](https://wiki.debian.org/Latex) 安装 TeX 环境。

目前仅在 LuaLaTeX 下进行了测试，对于 XeLaTeX 兼容性未知，因此推荐使用 LuaLaTeX。

本文档类需要使用下列版权字体，请预先将它们安装到系统的字体目录下：

- `SimSun` ((C) Copyright ZHONGYI Electronic Co. 2001)

- `FangSong_GB2312` ((C) Copyright GreatWall Computer Co. 1994)

## 使用方式

> 在[当前版本](./VERSION)，并不推荐您使用诸如 `Overleaf` 等类似的在线编辑平台，推荐您在本地进行文章的撰写工作。

推荐您直接 `git clone` 这个仓库， 之后请将：

- `class-assets/`

- `*.cls`

复制到新的目录下，在新的目录进行文章撰写以及版本管理。

`tex` 文件示例：
```latex
\documentclass{whxythesis}

...Your other contents....
```

### 我需要修改字体、样式或其他设置怎么办？

在[当前版本](./VERSION)下，您可以直接对 `cls` 文件进行修改。

## 免责声明

请参阅[DISCLAIMERS](./DISCLAIMERS)。

## 资源文件版权信息

请参阅[ASSETS-COPYRIGHTS](./ASSETS-COPYRIGHTS)。

## 开放源码许可

```latex
%% whxythesis.cls
%% Copyright 2025-  ShXlin. Li
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   https://www.latex-project.org/lppl.txt
% and version 1.3c or later is part of all distributions of LaTeX
% version 2008 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is ShXlin. Li.
%
% This work consists of the file whxythesis.cls
```

See full [LICENSE](./LICENSE).

## 动机

发起这个项目的原因，主要是因为 Linux 下没有完全兼容 MS Office 的办公套件，尽管有 WPS, 但仍然存在与 MS Office 不同的地方。当然，Linux 下也有字体问题。然后再就是我真的没想到学校的 docx 模板与 pdf 范文竟然存在许多不一致的地方，这非常难受。因此，需要一个跨平台还需要格式一致的排版工具 —— LaTeX。

当然，在本模板中，仍然有些许个人的喜好与取舍：

模板中只有些许地方使用了学校模板中使用的`SimSun`，其余的地方仍然保持 CTeX 与 LaTeX 的默认字体。（如果你想调整，你可以参考上文提到的**使用方式**进行修改。）

部分排版可能存在不同，本人已经尽量调整了，甚至拿上了尺子，奈何本人功力不足，只能等后面慢慢调整了（还有机会吗？）。

## 作者笔记与致谢

本人之前并未系统的接触过 LaTeX，因此是一个纯粹的新手，使用 LaTeX 的契机纯粹是看了几篇学术论文，一时兴起，同时也马上要写毕业论文了，遂开始尝试从零开始制作模板。

当然，完成该模板的撰写仅仅花了7天时间（从2025/11/30开始）到2025/12/07完成，因此质量欠佳，望请谅解。

在模板的制作中，我十分感谢：

- 刘海洋老师的《LaTeX入门》一书

- CTeX 的开发者们

- [山东大学的 LaTeX 模板维护者们](https://www.overleaf.com/latex/templates/shan-dong-da-xue-ben-ke-bi-ye-lun-wen-she-ji-mo-ban/nmxjdrvpjytg)

- [清华大学的 LaTeX 模板维护者们](https://github.com/tuna/thuthesis)

- 各种 LLMs (特别是AI Studio 的 Google Gemini 3)

- 搜索引擎

- 以及各种让这个模板从无到有的工具们

## TODO

请参阅[本仓库的 Projects](https://github.com/lishxlin/whxythesis/projects)

---

欢迎提交 Issue 和 Pull Request！
