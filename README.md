# whxythesis

此 **文档类** 为武汉学院理工科类 **本科** 毕业论文LaTeX模板。

An Unofficial STEM Graduation Thesis Template **document class** in LaTeX for Wuhan College.

See [VERSION](./VERSION) to get current version.

💡使用 `Debian GNU/Linux` 编写，其他平台可能存在偏差，使用时注意修正。

## 环境要求

为了获得最佳体验，请使用 [TeX Live 2025](https://www.tug.org/texlive/) 或更高版本。

对于 `Debian GNU/Linux`系，请参阅 [此Wiki](https://wiki.debian.org/Latex) 安装 TeX 环境。

目前仅在 LuaLaTeX 下进行了测试，对于 XeLaTeX 兼容性未知，因此推荐使用 LuaLaTeX。

### 字体要求

本文档类使用 CTeX `fontset=ubuntu`，您需要安装[思源CJK字体家族](https://github.com/notofonts/noto-cjk)，[文鼎ＰＬ简中楷(AR PL KaitiM GB)](http://www.arphic.com.tw/)。

在 `Debian GNU/Linux`及其衍生发行版下，这很好解决：

`apt install fonts-noto-cjk fonts-noto-cjk-extra fonts-arphic-gkai00mp`

您还可以通过下载并解压 `.deb` 来快速获取对应的字体：

[fonts-noto](https://packages.debian.org/sid/fonts-noto) 家族：

- [fonts-noto-cjk](https://packages.debian.org/trixie/all/fonts-noto-cjk/download)

- [fonts-noto-cjk-extra](https://packages.debian.org/trixie/all/fonts-noto-cjk-extra/download)

[AR PL KaitiM GB](http://www.arphic.com.tw/):

- [fonts-arphic-gkai00mp](https://packages.debian.org/sid/all/fonts-arphic-gkai00mp/download)

本文档类同时需要使用下列版权字体，请预先将它们安装到系统的字体目录下：

- `SimSun` ((C) Copyright ZHONGYI Electronic Co. 2001)

- `FangSong_GB2312` ((C) Copyright GreatWall Computer Co. 1994) 
	
	> 以下链接仅为信息来源参考，旨在展示该字体曾由教育机构等公开提供。字体版权归原始开发商所有。

	- [SCNU](https://life.scnu.edu.cn/a/20220309/5508.html)
	
	- [XXMU](https://www.xxmu.edu.cn/lifescience/info/1102/2765.htm)
	
	- [YAU](https://dbxb.yau.edu.cn/info/1052/2656.htm)
	
	- [LZUFE](https://kyjf.lzufe.edu.cn/info/1032/1106.htm)
	
	- [LCU](https://rwskc.lcu.edu.cn/xzzx/539885.htm)

## 使用方式

> 在[当前版本](./VERSION)，并不推荐您使用诸如 `Overleaf` 等类似的在线编辑平台，推荐您在本地进行文章的撰写工作。

推荐您直接 `git clone` 这个仓库， 之后请将：

- `class-assets/`

- `*.cls`

复制到新的目录下，在新的目录进行文章撰写以及版本管理。

### `tex` 文件快速开始
```latex
\documentclass{whxythesis}

\whxystuadvisor{}
\whxystuclass{}
\whxystucolle{}
\whxystugradeyear{}
\whxystuid{}
\whxystumajor{}
\author{}
\whxyauthoreng{}
\title{}
\whxytitleeng{}
\date{}
\addbibresource[]{}

\begin{document}
\easygenconstants

\begin{whxyabstract}
{}{}{}{}
\end{whxyabstract}

\genwhxytoc

\whxystartcontents
% ...Your main contents

\whxystartending
% ...Your ending texts...

\easyprintbib

\whxyacks
% ...Your acknowledgments...

% \whxyemptypage{}
% ...If you have some appendixes...
```

### 全文解释

<details>
	<summary>展开</summary>
	
```latex
\documentclass{whxythesis}
    
\whxystuadvisor{}                       % 教师名称+职称
\whxystuclass{}                         % 你的班级
\whxystucolle{}                         % 你的学院
\whxystugradeyear{}                     % 你的毕业届次
\whxystuid{}                            % 你的学号
\whxystumajor{}                         % 你的专业名称
\author{}                               % 你的名字（中文）
\whxyauthoreng{}                        % 你的英文名字（一般是拼音）
\title{}                                % 论文标题（中文）
\whxytitleeng{}                         % 英文论文标题
\date{}                                 % 日期（X年X月X日）
\addbibresource[]{}                     % bib文件（及其设置）
    
\begin{document}
\easygenconstants                       % 快速打印头三页（自动\clearpage）
    
\begin{whxyabstract}                    % 摘要（自动\clearpage）
{}{}{}{}                                % {中文摘要}{中文关键词}{英文摘要}{英文关键词}
\end{whxyabstract}                      %
    
\genwhxytoc                             % 打印目录（自动\clearpage）
    
\whxystartcontents                      % 标记正文开始并设置相关样式（自动\clearpage）
% ...Your main contents
    
\whxystartending                        % 标记正文结束，开始撰写结语（自动\clearpage）
% ...Your ending texts...
    
\easyprintbib                           % 打印参考文献（引用）（自动\clearpage）
    
\whxyacks                               % 标记致谢页开始（自动\clearpage）
% ...Your acknowledgments...
    
% \whxyemptypage{}                      % 如果你有附录之类的，请使用这个（自动、clearpage）
% ...If you have some appendixes...     % {标题}
```
</details>

### 实用片段

请参阅 `./snippets/` 下的各个文件。

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

请参阅[MISC仓库的 Projects](https://github.com/lishxlin/whxythesis-misc/projects)

---

欢迎提交 Issue 和 Pull Request！
