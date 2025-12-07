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

%%%%%%% Author says %%%%%%%
% This is a 7-days work since 2025/11/30.
%
% I am still quite new to LaTeX. As of 2025/12/07,
% this class may contain some hard-coded settings,
% non-standard practices and may not yet offer full flexibility.
%
% You can easily adapt or override the settings by patching this
% file as needed. (and if you can send patches to me, I'll be
% appreciate for it!)
%
% My sincere thanks go to:
%   – "LaTeX 入门" by Liu Haiyang,
%   – modern search engines,
%   – powerful LLMs,
%   – and all the tools that made this possible.
%
% If you spot any issues or have suggestions for improvement,
% feel free to send feedback! 
%
% Thank you for choosing this class!
%
% First version: 2025/12/07 Sun in Wuhan.
%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{whxythesis}[2025/12/07 2026 An Up-to-date thesis document class for Wuhan College]
\LoadClass[12pt, a4paper, zihao=-4, AutoFakeBold, AutoFakeSlant]{ctexart}

\makeatletter
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{fontspec}
\RequirePackage{xparse}
\RequirePackage{etoolbox}
\RequirePackage{titletoc}
\RequirePackage{enumitem}
\RequirePackage{booktabs}
\RequirePackage{caption}
\RequirePackage{amsmath}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[backend=biber,style=gb7714-2015,sorting=gb7714-2015]{biblatex}
\RequirePackage{setspace}
\RequirePackage{layout}
\RequirePackage{multirow}
\RequirePackage{array}

% Set fonts
\setCJKfamilyfont{zhfs}{FangSong_GB2312}
\setCJKfamilyfont{zhfsb}{FangSong_GB2312}[FakeBold = 1.2]
\newfontfamily{\simsunfont}{SimSun}[
  AutoFakeBold = 3,
  % Scale = MatchLowercase,
  LetterSpace = -1,
  WordSpace = 0
]
\newfontfamily{\fangsonggb}{FangSong_GB2312}[
  AutoFakeBold = 1.2
]

% Set paper
\geometry{
  a4paper,
  top = 1.18in,
  bottom = 0.98in,
  left = 0.98in,
  right = 0.79in,
  headsep = 0.59in,
  footskip = 0.69in,
  marginparwidth = 0pt,
  marginparsep = 0pt
}

\linespread{1.4}

% Define heading contents
\fancypagestyle{plain}{
  \fancyhf{}
  \fancyfoot[C]{\zihao{-5}\thepage}
  \renewcommand\headrulewidth{0pt}
  \renewcommand\footrulewidth{0pt}
}
\fancypagestyle{plainplus}{
  \fancyhf{}
  \fancyhead[C]{
    \raisebox{-20pt}[0pt][0pt]{
      \zihao{-5}
      武汉学院毕业论文（设计）
    }
    \\[10pt]
    \rule{\textwidth}{0.64pt}
  }
  \renewcommand\headrulewidth{0pt}
  \renewcommand\footrulewidth{0pt}
}
\fancypagestyle{body}{
  \fancyhf{}
  \fancyfoot[C]{\zihao{-5}\thepage}
  \fancyhead[C]{
    \raisebox{-20pt}[0pt][0pt]{
      \zihao{-5}
      武汉学院毕业论文（设计）
    }
    \\[10pt]
    \rule{\textwidth}{0.64pt}
  }
  \renewcommand\headrulewidth{0pt}
  \renewcommand\footrulewidth{0pt}
}

%%%%%% Define cover generator commands
\providecommand{\subtitle}{\ }
\providecommand{\stuid}{\ }
\providecommand{\stuclass}{\ }
\providecommand{\stugradeyear}{\ }
\providecommand{\stumajor}{\ }
\providecommand{\stucolle}{\ }
\providecommand{\stuadvisor}{\ }

\newcommand{\whxystuid}[1]{\renewcommand{\stuid}{#1}}
\newcommand{\whxystuclass}[1]{\renewcommand{\stuclass}{#1}}
\newcommand{\whxystugradeyear}[1]{\renewcommand{\stugradeyear}{#1}}
\newcommand{\whxystumajor}[1]{\renewcommand{\stumajor}{#1}}
\newcommand{\whxystucolle}[1]{\renewcommand{\stucolle}{#1}}
\newcommand{\whxystuadvisor}[1]{\renewcommand{\stuadvisor}{#1}}

\ProvideDocumentCommand{\whxycover}{ m m m m m m }{
  \begin{center}
    \vspace*{5pt}
    \includegraphics[scale=0.9]{class-assets/school-logo-hd.png} % Can I manage it by using Autotools?
      
    \vspace*{56pt}
    {
      \heiti
      \zihao{-0}
      \textbf{本科毕业论文（设计）}
    }
    \vspace*{88pt}
    
    \begin{table}[h!]
      \renewcommand\arraystretch{1.85}
      \centering
      \CJKfamily{zhfsb}
      \fangsonggb
      \bfseries
      \zihao{4}
      \begin{tabularx}{23em}{ll>{\centering\arraybackslash}p{18em}}
        论文题目 & : & \@title \\
        \cline{3-3}
        姓\qquad 名 & : & \@author \\
        \cline{3-3}
        学\qquad 号 & : & #1 \\
        \cline{3-3}
        班\qquad 级 & : & #2 \\
        \cline{3-3}
        届\qquad 次 & : & #3届 \\
        \cline{3-3}
        专\qquad 业 & : & #4 \\
        \cline{3-3}
        学院（部） & : & #5学院 \\
        \cline{3-3}
        指导老师 & : & #6 \\
        \cline{3-3}
        完成时间 & : & \@date \\
        \cline{3-3}
      \end{tabularx}
    \end{table}

  \end{center}
}

\newcommand{\genwhxycover}{
  \thispagestyle{empty}
  \whxycover%
    {\stuid}%
    {\stuclass}%
    {\stugradeyear}%
    {\stumajor}%
    {\stucolle}%
    {\stuadvisor}%
}

%%%%%% Define claims page generator commands
\ProvideDocumentCommand{\genwhxyclaims}{}{
  \clearpage
  \thispagestyle{plainplus}
  \begin{center}
    % \vspace*{2pt}
    \textbf{\zihao{2} 作者声明}
  \end{center}
  {% Start disclaimer box
    \linespread{1.9}
    \zihao{4}
    \par
    本毕业论文（设计）是在导师的指导下由本人独立撰写完成的，没有剽窃、抄袭、造假等违反道德、学术规范和其他侵权行为。对本论文（设计）的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。因本毕业论文（设计）引起的法律结果完全由本人承担。\par
    毕业论文（设计）成果归武汉学院所有。\par
    特此声明 \par
  }
  {% Start signature box
    \vspace{4.2\baselineskip}
    \noindent\hfill
    \begin{minipage}{0.5\textwidth}
      \linespread{2}
      \zihao{4}
      \fangsong
      作者专业：\quad \textbf{\CJKfamily{zhfsb} \stumajor} \\
      作者学号：\quad \textbf{\fangsonggb \stuid} \\
      作者签名：\quad \textbf{\CJKfamily{zhfsb} \ } \\
      \vspace{1pt}
      \hfill \textbf{\fangsonggb 年\hspace*{1.2\ccwd}月\hspace*{2\ccwd}日} \hspace*{60pt}
    \end{minipage}
  }
}

%%%%%% Define multi-lang titles page
\providecommand{\titleeng}{placeholder}
\providecommand{\authoreng}{placeholder}
\newcommand{\whxytitleeng}[1]{\renewcommand{\titleeng}{#1}}
\newcommand{\whxyauthoreng}[1]{\renewcommand{\authoreng}{#1}}
\ProvideDocumentCommand{\genwhxymultilangtitles}{}{
  % CH-EN Titles
  \clearpage
  \thispagestyle{plainplus}
  {
    \linespread{1.25}
    \vspace*{5.2\baselineskip}
    {
      \heiti
      \zihao{2}
      \centering
      \textbf{\@title}
      \par
    }
    \vspace*{0.8\baselineskip}
    {
      \heiti
      \zihao{3}
      \centering
      \@author
      \par
    }
    \vspace*{0.8\baselineskip}
    {
      \zihao{2}
      \centering
      \titleeng
      \par
    }
    \vspace*{\baselineskip}
    {
      \zihao{3}
      \centering
      \authoreng
      \par
    }
    \vfill
    \begin{center}
      \zihao{3}
      \textbf{\simsunfont\@date}
    \end{center}
    \vspace*{\baselineskip}
  }
  \clearpage
}

%%%%%%% 
% The CH-EN abstract
% Chinese abstract and keywords, English abstract and keywords
% {CH ABSTRACT}{CHKEYWORDS}{ENABSTRACE}{ENKEYWORDS}
\DeclareDocumentEnvironment{whxyabstract}{ +m m +m m }{
  {
    \clearpage
    {% Chinese page
      \thispagestyle{plainplus}
      \vspace*{1pt}
      \begin{center}
        \raisebox{10pt}[0pt][0pt]{
          \songti
          \zihao{-2}
          \textbf{摘\ \ \ \ 要}
        }
      \end{center}
      \linespread{1.4}
      \songti
      \zihao{-4}
      % \vspace*{0.2\baselineskip}
      \par
      #1
      \par
      \vspace*{\baselineskip}
      \zihao{3}
      \noindent
      \textbf{关键词：} \zihao{-4} #2
    }
    {% English page
      \clearpage
      \thispagestyle{plainplus}
      \vspace*{1pt}
      \begin{center}
        \raisebox{10pt}[0pt][0pt]{
          \zihao{-2}
          \textbf{Abstract}
        }
      \end{center}
      \linespread{1.4}
      \zihao{-4}
      \vspace*{-1pt}
      \par
      #3
      \par
      \vspace*{\baselineskip}
      \zihao{3}
      \noindent
      \textbf{Keywords：} \zihao{-4} #4
    }
  }
}{
  \clearpage
}

%%%%%%
% Set ToC
\setcounter{tocdepth}{2}
\newcommand{\genwhxytoc}{
  \clearpage
  \thispagestyle{plainplus}
  \vspace*{0.01pt}

  \vbox{
    \vspace*{-12pt}
    \tableofcontents
  }
  \clearpage
}

\titlecontents{section}[10pt]{%
  \zihao{4}%
  \songti%
  \bfseries%
}{
  \contentslabel{15pt}
}{}{
  \titlerule*{\raisebox{3pt}{\Large\textbf{\ldots}}}\simsunfont\contentspage
}[
  \vspace{0.3\baselineskip}
]

\titlecontents{subsection}[35pt]{%
  \vspace*{-3pt}%
  \zihao{-4}%
  \songti%
}{
  \contentslabel{25pt}
}{}{
  \titlerule*{\raisebox{3pt}{\textbf{\ldots}}}\simsunfont\contentspage
}[
  \vspace{0.2\baselineskip}
]

% Set style of tables, figures
\renewcommand{\thetable}{\thesection.\arabic{table}}
\makeatletter
\@addtoreset{table}{section}
\makeatother
\renewcommand{\thefigure}{\thesection.\arabic{figure}}
\makeatletter
\@addtoreset{figure}{section}
\makeatother
\renewcommand{\theequation}{式\thesection.\arabic{equation}}
\makeatletter
\@addtoreset{equation}{section}
\makeatother


\DeclareCaptionLabelSeparator{twospace}{\ \ }
\captionsetup[table]{
  font = {bf},
  labelfont = {bf},
  justification = centering,
  skip = 0pt,
  labelsep = twospace
}
\captionsetup[figure]{
  font = {bf},
  labelfont = {bf},
  justification = centering,
  skip = 0pt,
  labelsep = twospace
}

%%%%%%
% Biblatex settings
\renewcommand{\bibsetup}{
  \setlength{\parskip}{15pt}
  \setlength{\bibitemsep}{1pt}
  \setlength{\biblabelsep}{1pt}
}
\renewcommand{\bibfont}{\zihao{5}}
\defbibheading{bibliography}[\bibname]{
  \clearpage
  % \vspace*{2pt}
  \centering
  {\zihao{-2}\bfseries 参考文献}
}
%% HELP BY GEMINI 3.0
\setlength{\bibhang}{1\ccwd}
\defbibenvironment{bibliography}
  {\list
     {\printfield[labelnumberwidth]{labelnumber}}
     {\setlength{\labelwidth}{\labelnumberwidth}%
      \setlength{\leftmargin}{\labelwidth}%
      \setlength{\labelsep}{0pt}%
      \setlength{\labelsep}{\biblabelsep}%
      \addtolength{\leftmargin}{\labelsep}%
      \addtolength{\leftmargin}{\bibhang}%
      \setlength{\itemindent}{-\bibhang}%
      \setlength{\itemsep}{\bibitemsep}%
      \setlength{\parsep}{\bibparsep}}%
      \renewcommand*{\makelabel}[1]{\hss##1}}
  {\endlist}
  {\item}
%%
\DeclareFieldFormat{journaltitle}{\mkbibemph{#1}}
\DeclareFieldFormat[book]{title}{\mkbibemph{#1}}

\newcommand{\whxyprintbibliography}{
  \linespread{1}
  \printbibliography
}

% CTeX general configurations
\ctexset{
  contentsname = {
    \songti
    \zihao{-2}
    \textbf{目\ \ \ \ 录\\[12pt]}
  },
  section = {
    number = \simsunfont\arabic{section},
    format += \zihao{3},
    afterskip = 23pt
  },
  subsection = {
    number = \simsunfont\thesection.\arabic{subsection},
    format += \zihao{4},
    indent = 26pt,
    fixskip = true
  },
  subsubsection = {
    number = \simsunfont\thesubsection.\arabic{subsubsection},
    format += \zihao{-4},
    indent = 23pt,
    fixskip = true
  }
}

%%%%%% Useful related commands
\ProvideDocumentCommand{\easygenconstants}{}{
  \genwhxycover
  \genwhxyclaims
  \genwhxymultilangtitles
}

\ProvideDocumentCommand{\whxystartcontents}{}{
  \clearpage
  \pagestyle{body}
  \pagenumbering{arabic}
}

\ProvideDocumentCommand{\whxystartending}{}{
  \clearpage
  \phantomsection
  \thispagestyle{plainplus}
  \addcontentsline{toc}{section}{结语}
  \begin{center}
    \raisebox{-8pt}[0pt][0pt]{
      \songti
      \zihao{-2}
      \textbf{结\ \ \ \ 语}
    }
  \end{center}
  \linespread{1.38}
  \songti
  \zihao{-4}
  \vspace*{0.7\baselineskip}
  \par
}

\ProvideDocumentCommand{\easyprintbib}{}{
  \clearpage
  \phantomsection
  \thispagestyle{plainplus}
  \addcontentsline{toc}{section}{参考文献}
  \whxyprintbibliography
}

\ProvideDocumentCommand{\whxyacks}{}{
  \clearpage
  \phantomsection
  \thispagestyle{plainplus}
  \addcontentsline{toc}{section}{致谢}
  \begin{center}
    \raisebox{-8pt}[0pt][0pt]{
      \songti
      \zihao{-2}
      \textbf{致\ \ \ \ 谢}
    }
  \end{center}
  \linespread{1.38}
  \songti
  \zihao{-4}
  \vspace*{0.7\baselineskip}
  \par
}

\ProvideDocumentCommand{\whxyemptypage}{ m }{
  \clearpage
  \phantomsection
  \thispagestyle{plainplus}
  \addcontentsline{toc}{section}{#1}
  \begin{center}
    \raisebox{-25pt}[0pt][0pt]{
      \songti
      \zihao{-2}
      \textbf{#1}
    }
  \end{center}
}

\makeatother
