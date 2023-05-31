%
%  Copyright 2018 Wen Wang <wwzvd@mst.edu>
%
%  This work may be distributed and/or modified under the
%  conditions of the LaTeX Project Public License, either version 1.3
%  of this license or (at your option) any later version.
%  The latest version of this license is in
%    http://www.latex-project.org/lppl.txt
%  and version 1.3 or later is part of all distributions of LaTeX
%  version 2005/12/01 or later.
%
%  This work has the LPPL maintenance status `maintained'.
%
%  The Current Maintainer of this work is Wen Wang <wwzvd@mst.edu>.
%
%  This work consists of the files thesis-uestc.cls, thesis-uestc.bst.
%


\ProvidesClass{thesis-uestc}

\LoadClass[12pt, openany, twoside]{book}

\RequirePackage{ifxetex}
\RequireXeTeX

%\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor}
\RequirePackage[svgnames]{xcolor}
\RequirePackage{graphicx}
\RequirePackage[font={doublespacing, small}, labelsep=space, skip=6pt, justification=centering]{caption}

\RequirePackage{array}
\RequirePackage{setspace}
\RequirePackage{multirow}
\RequirePackage[tbtags]{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{lmodern}
\RequirePackage{mathspec}
\RequirePackage{fontspec}
\RequirePackage{bm}
\RequirePackage{bicaption}
\RequirePackage{threeparttable}
\RequirePackage{algorithmic}
\RequirePackage{algorithm}
\RequirePackage{xeCJK}
\RequirePackage{ifplatform}
\RequirePackage{mathrsfs} 
\RequirePackage[figuresright]{rotating}

\usepackage{adjustbox}
\usepackage[graphicx]{realboxes}
\usepackage{rotating}
\usepackage{xltxtra}


\ifwindows
  \setallmainfonts{Times New Roman}
  \newfontfamily{\heitiEn}{Adobe Heiti Std}
%  \setCJKmainfont[AutoFakeBold=true]{SimSun}
  \setCJKmainfont[BoldFont={Adobe Heiti Std},ItalicFont={Adobe Kaiti Std}]{Adobe Song Std}
  \setCJKsansfont{Adobe Heiti Std}
  \setCJKmonofont{Adobe Fangsong Std}
  \setCJKmonofont{HYRuiYiSongX}
  \newCJKfontfamily{\songti}{Adobe Song Std}
  \newCJKfontfamily{\heiti}{Adobe Heiti Std}
  \newCJKfontfamily{\kaiti}{Adobe Kaiti Std}
  \newCJKfontfamily{\fs}{Adobe Fangsong Std}
  \newCJKfontfamily{\xkai}{STXingkai}
  \newCJKfontfamily{\hanyi}{HYRuiYiSongX}
  % 自动调整中英文之间的空白
  % \punctstyle{quanjiao}
  \XeTeXlinebreaklocale "zh"      %中文断行
  \XeTeXlinebreakskip = 0pt plus 1pt %1pt左右弹性间距
\else
\ifmacosx
  \setallmainfonts{Times New Roman}
  \setCJKmainfont[AutoFakeBold=true]{Songti SC}
  \newCJKfontfamily{\heiti}{STHeiti}
\else
  \setCJKmainfont[AutoFakeBold=true]{simsun.ttc}
  \newCJKfontfamily{\heiti}{simhei.ttf}
  \setallmainfonts[
    BoldFont=timesbd.ttf,
    ItalicFont=timesi.ttf,
    BoldItalicFont=timesbi.ttf,
  ]{times.ttf}
\fi
\fi

\RequirePackage{zhnumber}
\RequirePackage{pifont}

\RequirePackage[hyphens]{url}
\RequirePackage[hyperfootnotes=false,
    bookmarksnumbered,
    bookmarksdepth=4
]{hyperref}
\hypersetup{
  colorlinks=true,
  citecolor=black,
  linkcolor=black,
  urlcolor=black
}

\newcommand{\chuhao}{\fontsize{60pt}{9pt}\selectfont}	    % 初号，单倍行距，仅封面使用
\newcommand{\erwu}{\fontsize{25pt}{9pt}\selectfont}	    % 25号，单倍行距，仅封面使用
\newcommand{\yihao}{\fontsize{26pt}{39pt}\selectfont}	    % 一号，1.5  倍行距
\newcommand{\xiaoyi}{\fontsize{24pt}{30pt}\selectfont}      % 小一，1.25 倍行距
\newcommand{\erhao}{\fontsize{22pt}{27.5pt}\selectfont}     % 二号，1.25 倍行距
\newcommand{\xiaoer}{\fontsize{18pt}{22.5pt}\selectfont}    % 小二，1.25 倍行距
\newcommand{\sanhao}{\fontsize{16pt}{20pt}\selectfont}      % 三号，1.25 倍行距
\newcommand{\xiaosan}{\fontsize{15pt}{19pt}\selectfont}     % 小三，1.25 倍行距
\newcommand{\sihao}{\fontsize{14pt}{17.5pt}\selectfont}     % 四号，1.25倍行距
\newcommand{\daxiaosi}{\fontsize{12pt}{18pt}\selectfont}    % 小四，1.5 倍行距
\newcommand{\xiaosi}{\fontsize{12pt}{15pt}\selectfont}      % 小四，1.25倍行距
\newcommand{\dawu}{\fontsize{10.5pt}{18pt}\selectfont}      % 五号，1.75倍行距
\newcommand{\zhongwu}{\fontsize{10.5pt}{16pt}\selectfont}   % 五号，1.5 倍行距
\newcommand{\wuhao}{\fontsize{10.5pt}{10.5pt}\selectfont}   % 五号，单倍行距
\newcommand{\xiaowu}{\fontsize{9pt}{9pt}\selectfont}	    % 小五，单倍行距
\newcommand{\erhaoEn}{\fontsize{22pt}{39pt}\selectfont}

\makeatletter % undo the wrong changes made by mathspec
\let\RequirePackage\original@RequirePackage
\let\usepackage\RequirePackage
\makeatother
\RequirePackage[nopostdot]{glossaries}
\renewcommand*{\glossarypreamble}{\vspace{-9pt}}

\newacronymstyle{acronym-uestc}{
  \ifglshaslong{\glslabel}{\glsgenacfmt}{\glsgenentryfmt}
}{
  \renewcommand*{\GenericAcronymFields}{
    first={\the\glslongtok\space\protect\paren{\the\glsshorttok}},
    description={\the\glslongtok}}
  \renewcommand*{\genacrfullformat}[2]{%
    \glsentrydesc{##1}~(\glsentrylong{##1},\space%
    \glsentryshort{##1})%
  }
  \renewcommand*{\acronymentry}[1]{%
    \acronymfont{\glsentryshort{##1}}%
  }
}
\setacronymstyle{acronym-uestc}

\newglossarystyle{long-uestc}{
  \renewenvironment{theglossary}%
    {\begin{longtable}{lp{.7\textwidth}}}%
    {\end{longtable}}%

  \renewcommand*{\glossaryheader}{}%
  \renewcommand*{\glsgroupheading}[1]{}%
  \renewcommand{\glossentry}[2]{
    \glsentryitem{##1}\glstarget{##1}{\glossentryname{##1}} &
    \ifglshaslong{##1}{\glsentrylong{##1}\ifglshasdesc{##1}{, \glsentrydesc{##1}}{}}
    {\glsentrydesc{##1}} \\
  }
  \renewcommand*{\subglossentry}[3]{
  \glossentry{##2}{##3}}
}

\defglsentryfmt{%
  \ifglshaslong{\glslabel}{%
    \glsgenacfmt%
  }{%
    \ifglsused{\glslabel}{%
      \glsgenentryfmt%
    }{%
      \glsgenentryfmt%
    }%
  }%
}

\newcommand{\thesisglossarylist}{
  \newpage
  \fancyhf{}
  \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont 缩略词表}
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont-\Roman{pseudopage}-}
  \setlength\glsdescwidth{.7\textwidth}
  \pdfbookmark{缩略词表}{glossary}
  \printglossary[style=long-uestc, title={\protect\centering 缩略词表}, nonumberlist, nogroupskip]
}
\makeglossaries

\RequirePackage{standalone}
\RequirePackage{indentfirst}
\RequirePackage{calc}
\RequirePackage{float}
\RequirePackage{fancyvrb}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage[numbers, sort&compress, square, super]{natbib}
\renewcommand\bibnumfmt[1]{\makebox[2em][r]{[#1]}}
\RequirePackage{bibentry}
\RequirePackage[normalem]{ulem}
\RequirePackage{enumitem}
%\RequirePackage{algorithm2e}
\RequirePackage{etoolbox}
\RequirePackage{newfloat}
\RequirePackage[resetlabels]{multibib}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage{everypage}
\RequirePackage{ifoddpage}
\RequirePackage{booktabs}

\floatname{algorithm}{算法}

\renewcommand{\thealgorithm}{\arabic{chapter}.\arabic{algorithm}} 
\renewcommand{\algorithmicrequire}{\textbf{输入:}} 
\renewcommand{\algorithmicensure}{\textbf{输出:}}

%\let\algorithm\relax
%\let\endalgorithm\relax
%\expandafter\let\csname algorithm*\endcsname\relax
%\expandafter\let\csname endalgorithm*\endcsname\relax
%\let\listofalgorithms\relax

% Define the new algorithm environment
%\DeclareFloatingEnvironment{algorithm}

%\makeatletter
%\renewcommand{\@endalgoln}{\@endalgocfline\hfill\strut\par}
%\renewcommand{\;}{\ifmmode
%  \@mathsemicolon
%\else
%  \@endalgoln
%\fi
%}
% Definition for the style ruled
% First add the rules enclosing the captiom
%\DeclareCaptionFormat{algrule}{%
%  {\@hangfrom{#1#2}%
%     \doublespacing
%     \small
%     \advance\caption@parindent\hangindent
%     \advance\caption@hangindent\hangindent
%     \caption@@par#3\par}%
%}


% Apply the new format to the algorithm environment
%\captionsetup[algorithm]{format=algrule}

%\makeatletter

%\renewcommand{\algorithmname}{算法}
%\renewcommand{\thealgorithm}{\arabic{chapter}.\arabic{algorithm}}
%\captionsetup[algorithm]{aboveskip=6pt}
%\AtBeginEnvironment{algorithm}{\vspace{6pt}}

\graphicspath{{./pic/}}

\RequirePackage[titles, subfigure]{tocloft}
\RequirePackage{subfigure}


\urlstyle{rm}
\raggedbottom

\renewcommand{\contentsname}{目\hspace{6pt}录}
\renewcommand{\bibname}{参考文献}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\listfigurename}{图目录}
\renewcommand{\listtablename}{表目录}

% \newcommand*{\noaddvspace}{\renewcommand*{\addvspace}[1]{}}
% \addtocontents{lof}{\protect\noaddvspace}
% \addtocontents{lot}{\protect\noaddvspace}

\pretocmd{\listoffigures}{
    \newpage
  \fancyhf{}
  \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont 图目录}
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
  \renewcommand{\cftfigpresnum}{图}
  \addtolength{\cftfignumwidth}{12pt}
  \addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}
}{}{}

\newcommand{\thesisfigurelist}{
  \listoffigures
}

\pretocmd{\listoftables}{
    \newpage
  \fancyhf{}
  \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\selectfont 表目录}
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont\Roman{pseudopage}}
  \renewcommand{\cfttabpresnum}{表}
  \addtolength{\cfttabnumwidth}{12pt}
  \addtocontents{toc}{\protect\setcounter{tocdepth}{-1}}
}{}{}

\newcommand{\thesistablelist}{
  \listoftables
}

\RequirePackage[a4paper,
  inner=2.5cm, outer=2.5cm, top=2.54cm, bottom=2.54cm,
  bindingoffset=0cm]{geometry}

\setlength{\headheight}{15pt}

\pagestyle{fancy}
\linespread{1.391}
\setlength\parindent{24pt}
\titlespacing{\chapter}{0pt}{0pt}{18pt}
\titlespacing{\section}{0pt}{18pt}{6pt}
\titlespacing{\subsection}{0pt}{12pt}{6pt}
\titlespacing{\subsubsection}{0pt}{12pt}{6pt}

\renewcommand\thechapter{第\zhnumber{\arabic{chapter}}章}
\renewcommand\thesection{\arabic{chapter}.\arabic{section}}

\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}

\captionsetup{format=hang}
%\captionsetup{width=\textwidth - 42pt}
\captionsetup[figure]{aboveskip=6pt,belowskip=0pt}
\captionsetup[figure][bi-first]{name = 图}
\captionsetup[figure][bi-second]{name = Figure}
\captionsetup[table]{belowskip=6pt}
\captionsetup[table][bi-first]{name = 表}
\captionsetup[table][bi-second]{name = Table}
\setlength{\extrarowheight}{5pt}
\setlength{\subfigcapskip}{0pt}
\setlength{\intextsep}{9pt}

\makeatletter
\AtBeginEnvironment{figure}{
  \def\@floatboxreset{\centering}
}
\makeatother

\makeatletter
\AtBeginEnvironment{table}{
  \def\@floatboxreset{\centering}
}
\makeatother
\AtBeginEnvironment{tabular}{\small}

\makeatletter
\renewcommand{\p@subfigure}{\arabic{chapter}.\arabic{figure}}
\makeatother


\newcommand{\chinesecolon}{\char"FF1A}
\newcommand{\chinesespace}{\char"3000}
\newcommand{\chineseperiod}{\char"3002}
\newcommand{\chinesequestion}{\char"FF1F}
\newcommand{\chineseexclamation}{\char"FF01}
\newcommand{\chinesecomma}{\char"FF0C}
\newcommand{\chinesesemicolon}{\char"FF1B}
\newcommand{\chineseleftparenthesis}{\char"FF08}
\newcommand{\chineserightparenthesis}{\char"FF09}

\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{4}

\titleformat{\chapter}[block]
  {\centering\fontsize{15pt}{15pt}\selectfont\heiti\thispagestyle{fancy}}{\thechapter}{7.5pt}{}

\titleformat{\section}[block]
  {\fontsize{14pt}{14pt}\selectfont\heiti}
  {\thesection}{7pt}{}

\titleformat{\subsection}[block]
  {\fontsize{14pt}{14pt}\selectfont\heiti}
  {\thesubsection}{7pt}{}

\titleformat{\subsubsection}[block]
  {\fontsize{12pt}{12pt}\selectfont\heiti}
  {\thesubsubsection}{6pt}{}

\RequirePackage[hang, perpage]{footmisc}
\addtolength{\footnotesep}{0pt}
\setlength{\footnotemargin}{13.5pt}

\renewcommand{\footnotesize}{\fontsize{9pt}{10.8pt}\selectfont}
\renewcommand{\small}{\fontsize{10.5pt}{12.6pt}\selectfont}
\renewcommand\footnotelayout{\fontsize{9}{11.7}\selectfont}

\renewcommand{\thefootnote}{\ifcase\value{footnote}\or\ding{172}\or
\ding{173}\or\ding{174}\or\ding{175}\or\ding{176}\or\ding{177}\or
\ding{178}\or\ding{179}\or\ding{180\or\ding{181}}\fi}

\renewcommand{\footnoterule}{\vfill\noindent\vspace{0.9mm}\hspace{27pt}\rule{5.05cm}{0.02cm}\vspace*{2.6pt}}

\makeatletter
\def\@makefntext #1{
  \ifFN@hangfoot
      \bgroup \setbox \@tempboxa \hbox {
          \ifdim
        \footnotemargin >0pt \hb@xt@
                \footnotemargin {\hbox { \normalfont \@thefnmark}\hss }
            \else
              \hbox { \normalfont \@thefnmark}
      \fi
    }
        \leftmargin \wd \@tempboxa
        \rightmargin \z@ \linewidth \columnwidth
          \advance \linewidth -\leftmargin\parshape \@ne
    \leftmargin \linewidth \footnotesize \@setpar {{\@@par }}
    \leavevmode \llap {\box \@tempboxa }\parskip
        \hangfootparskip \relax \parindent
    \hangfootparindent \relax
        \else
          \parindent 1em \noindent
            \ifdim
                \footnotemargin >\z@ \hb@xt@
                \footnotemargin {\hss \hbox { \normalfont \@thefnmark} }
            \else
        \ifdim \footnotemargin =\z@
                    \llap {\hbox { \normalfont \@thefnmark} }
                \else
          \llap {\hb@xt@ -\footnotemargin {\hbox { \normalfont \@thefnmark} \hss }}
        \fi
            \fi
    \fi
        \footnotelayout #1\ifFN@hangfoot \par \egroup
  \fi
}
\makeatother

\newcounter{pseudopage}
\setcounter{pseudopage}{0}
\AddEverypageHook{\stepcounter{pseudopage}}

\newcommand\blankpage{%
  \newpage
  \null
  \thispagestyle{empty}%
  \addtocounter{pseudopage}{-1}%
  \newpage
}

\newenvironment{chineseabstract}{
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont-\Roman{pseudopage}-}
  \pagenumbering{Roman}
    \pdfbookmark{中文摘要}{chineseabstract}
    \chapter*{摘\chinesespace 要}
    \thispagestyle{fancy}
    \fancyhead[C]{\fontsize{10.5pt}{12.6pt} \kaiti 大连民族大学硕士学位论文 \hfill 摘要}
}{
  \checkoddpage
  \ifoddpage
      \blankpage
    \else
      \newpage
    \fi
}

\newcommand{\chinesekeyword}[1]{
  \vspace{\baselineskip}
  \noindent
    \begin{minipage}[t]{48pt}
      \noindent\textbf{关键词\chinesecolon}
    \end{minipage}
    \begin{minipage}[t]{\linewidth - 48pt}
      #1
    \end{minipage}
}


\newenvironment{symbolstable}{
  \pdfbookmark{主要符号对照表}{symbolstable}
  \chapter*{\hfill 主要符号对照表 \hfill}
   \thispagestyle{fancy}
    \fancyhead[C]{{\fontsize{10.5pt}{12.6pt}\kaiti 大连民族大学硕士学位论文}\hfill {\fontsize{10.5pt}{12.6pt}\kaiti \selectfont 主要符号对照表}}   
}{
  \checkoddpage
  \ifoddpage
      \blankpage
    \else
      \newpage
    \fi
}


\newenvironment{englishabstract}{
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont-\Roman{pseudopage}-}
  \pagenumbering{Roman}
  \pdfbookmark{英文摘要}{englishabstract}
  \chapter*{\bfseries ABSTRACT}
    \thispagestyle{fancy}
    \fancyhead[C]{{\fontsize{10.5pt}{12.6pt}\kaiti 大连民族大学硕士学位论文}\hfill {\fontsize{10.5pt}{12.6pt}\kaiti \selectfont ABSTRACT}}
}{
  \checkoddpage
  \ifoddpage
      \blankpage
    \else
      \newpage
    \fi
}

\newcommand{\englishkeyword}[1]{
  \vspace{\baselineskip}
  \noindent\begin{minipage}[t]{2.1cm}
      \noindent\textbf{Keywords:}
    \end{minipage}
    \begin{minipage}[t]{
      \linewidth - 2.1cm}
        #1
    \end{minipage}
}

\AddEverypageHook{\addtocontents{toc}{
  \protect\cftsetpnumwidth{\widthof{\thepage}-1pt}
}}

\AddEverypageHook{\addtocontents{lof}{
  \protect\cftsetpnumwidth{\widthof{\thepage}-1pt}
}}

\AddEverypageHook{\addtocontents{lot}{
  \protect\cftsetpnumwidth{\widthof{\thepage}-1pt}
}}

\tocloftpagestyle{fancy}
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand\cftchapleader{\cftdotfill{\cftdotsep}}

\renewcommand{\cftdotsep}{0.4}

\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftaftertoctitleskip}{18pt}
\setlength{\cftbeforechapskip}{0pt}

\addtolength{\cftchapnumwidth}{25pt}

\cftsetindents{section}{21pt}{22pt}
\cftsetindents{subsection}{44pt}{31pt}
\cftsetindents{subsubsection}{76pt}{41pt}

\renewcommand{\cfttoctitlefont}{\fontsize{15pt}{15pt}\selectfont\heiti}
\renewcommand\cftchapfont{\heiti}

\newcommand{\chinesedegreename}{硕士}
\newcommand{\chinesebooktitle}{硕士学位论文}
\newcommand{\englishbooktitle}{Master Thesis}
\newcommand{\thetitle}{}
\newcommand{\thetitleEn}{}
\newcommand{\theauthor}{}
\newcommand{\theauthorEn}{}
\newcommand{\thedate}{}
\newcommand{\theschool}{}
\newcommand{\themajor}{}
\newcommand{\themajorEn}{}
\newcommand{\theadvisor}{}
\newcommand{\theadvisorEn}{}
\newcommand{\thestudentid}{}
\newcommand{\thesecretelevel}{}
\newcommand{\theschoolid}{}
\newcommand{\thecategoryid}{}
\newcommand{\thefuadvisor}{}
\newcommand{\thefuadvisorEn}{}
\newcommand{\thedepartment}{}



\newcommand{\theadvisorLevel}{}
\newcommand{\theadvisorLevelEn}{}
\newcommand{\theadvisorDepartment}{}
\newcommand{\thefuadvisorLevel}{}
\newcommand{\thefuadvisorLevelEn}{}
\newcommand{\thefuadvisorDepartment}{}
\newcommand{\thedegreeLevel}{}
\newcommand{\thesubjectCategory}{}
\newcommand{\thesubjectMajor}{}
\newcommand{\thesubjectMajorEn}{}
\newcommand{\thepaperSubmitDate}{}
\newcommand{\thepaperDefenseDate}{}
\newcommand{\thedegreeAwardingDate}{}
\newcommand{\thedefenseChair}{}
\newcommand{\thedefenseChairLevel}{}
\newcommand{\thetitlePageBottomDate}{}
\newcommand{\thetitlePageBottomDateEn}{}
\newcommand{\thecoverPageBottomDate}{}




\newcommand{\mycite}[1]{\scalebox{1.3}[1.3]{\raisebox{-0.65ex}{\cite{#1}}}}

\renewcommand{\title}[1]{
  \renewcommand{\thetitle}{#1}
}

\newcommand{\titleEn}[1]{
	\renewcommand{\thetitleEn}{#1}
}

\renewcommand{\author}[1]{
  \renewcommand{\theauthor}{#1}
}

\newcommand{\authorEn}[1]{
  \renewcommand{\theauthorEn}{#1}
}

\renewcommand{\date}[1]{
  \renewcommand{\thedate}{#1}
}

\newcommand{\major}[1]{
  \renewcommand{\themajor}{#1}
}

\newcommand{\majorEn}[1]{
	\renewcommand{\themajorEn}{#1}
}

\newcommand{\school}[1]{
  \renewcommand{\theschool}{#1}
}

\newcommand{\advisor}[1]{
  \renewcommand{\theadvisor}{#1}
}

\newcommand{\advisorEn}[1]{
	\renewcommand{\theadvisorEn}{#1}
}

\newcommand{\studentid}[1]{
  \renewcommand{\thestudentid}{#1}
}

\newcommand{\secretelevel}[1]{
  \renewcommand{\thesecretelevel}{#1}
}

\newcommand{\schoolid}[1]{
  \renewcommand{\theschoolid}{#1}
}

\newcommand{\categoryid}[1]{
  \renewcommand{\thecategoryid}{#1}
}

\newcommand{\fuadvisor}[1]{
  \renewcommand{\thefuadvisor}{#1}
}

\newcommand{\fuadvisorEn}[1]{
  \renewcommand{\thefuadvisorEn}{#1}
}

\newcommand{\department}[1]{
  \renewcommand{\thedepartment}{#1}
}

\newcommand{\advisorLevel}[1]{
  \renewcommand{\theadvisorLevel}{#1}
}

\newcommand{\advisorLevelEn}[1]{
  \renewcommand{\theadvisorLevelEn}{#1}
}

\newcommand{\advisorDepartment}[1]{
  \renewcommand{\theadvisorDepartment}{#1}
}

\newcommand{\fuadvisorLevel}[1]{
  \renewcommand{\thefuadvisorLevel}{#1}
}

\newcommand{\fuadvisorLevelEn}[1]{
  \renewcommand{\thefuadvisorLevelEn}{#1}
}

\newcommand{\fuadvisorDepartment}[1]{
  \renewcommand{\thefuadvisorDepartment}{#1}
}

\newcommand{\degreeLevel}[1]{
  \renewcommand{\thedegreeLevel}{#1}
}

\newcommand{\subjectCategory}[1]{
  \renewcommand{\thesubjectCategory}{#1}
}

\newcommand{\subjectMajor}[1]{
  \renewcommand{\thesubjectMajor}{#1}
}

\newcommand{\subjectMajorEn}[1]{
  \renewcommand{\thesubjectMajorEn}{#1}
}

\newcommand{\paperSubmitDate}[1]{
  \renewcommand{\thepaperSubmitDate}{#1}
}

\newcommand{\paperDefenseDate}[1]{
  \renewcommand{\thepaperDefenseDate}{#1}
}

\newcommand{\degreeAwardingDate}[1]{
  \renewcommand{\thedegreeAwardingDate}{#1}
}

\newcommand{\defenseChair}[1]{
  \renewcommand{\thedefenseChair}{#1}
}

\newcommand{\defenseChairLevel}[1]{
  \renewcommand{\thedefenseChairLevel}{#1}
}

\newcommand{\titlePageBottomDate}[1]{
  \renewcommand{\thetitlePageBottomDate}{#1}
}

\newcommand{\titlePageBottomDateEn}[1]{
  \renewcommand{\thetitlePageBottomDateEn}{#1}
}

\newcommand{\coverPageBottomDate}[1]{
  \renewcommand{\thecoverPageBottomDate}{#1}
}



\DeclareOption{master}{
  \renewcommand{\chinesedegreename}{硕士}
  \renewcommand{\chinesebooktitle}{硕士学位论文}
  \renewcommand{\englishbooktitle}{Master Thesis}
}

\DeclareOption{promaster}{
  \renewcommand{\chinesedegreename}{硕士}
  \renewcommand{\chinesebooktitle}{专业学位硕士学位论文}
  \renewcommand{\englishbooktitle}{Master Thesis for Professional Degree}
}

\DeclareOption{doctor}{
  \renewcommand{\chinesedegreename}{博士}
  \renewcommand{\chinesebooktitle}{博士学位论文}
  \renewcommand{\englishbooktitle}{Doctoral Dissertation}
}


\newcommand{\makecover}{
\thispagestyle{empty}
\setlength{\extrarowheight}{9pt}
\newgeometry{inner=3cm, outer=3cm, top=1.8cm, bottom=3cm, bindingoffset=0cm}
{\quad}
\vspace{0.6cm}
\begin{center}
\includegraphics{dlnu.pdf}
\end{center}

\vspace{0.8cm}

\begin{center}
	\includegraphics[width = \textwidth]{a0.pdf}
\end{center}

\vspace{0.1cm}

\begin{center}
{\erwu MASTER THESIS} \\
\end{center}

\vspace{0.2cm}

\begin{center}
  \renewcommand\arraystretch{1.2}
  \begin{tabular}{p{0.25\textwidth}p{0.55\textwidth}} 
   {\xiaosan \heiti 论\hspace{8pt}文\hspace{8pt}题\hspace{8pt}目} & \xiaosan \heiti \thetitle \\
   {\xiaosan \heiti 作\hspace{8pt}者\hspace{8pt}姓\hspace{8pt}名} & {\xiaosan \heiti \theauthor} \\
   {\xiaosan \heiti 学\hspace{54pt}号} & {\xiaosan \heiti \thestudentid} \\
   {\xiaosan \heiti 专\hspace{8pt}业\hspace{8pt}类\hspace{8pt}别} & {\xiaosan \heiti \thesubjectCategory} \\
   {\xiaosan \heiti 专\hspace{8pt}业\hspace{8pt}领\hspace{8pt}域} & {\xiaosan \heiti \thesubjectMajor} \\
   {\xiaosan \heiti 指\hspace{8pt}导\hspace{8pt}教\hspace{8pt}师} & {\xiaosan \heiti \theadvisor \hspace{9pt} \theadvisorLevel \hspace{9pt} \thefuadvisor \hspace{9pt} \thefuadvisorLevel}\\
   % {\xiaosan \heiti 副\hspace{2pt}指\hspace{2pt}导\hspace{2pt}教\hspace{2pt}师} & {\xiaosan \heiti \thefuadvisor \hspace{9pt} \thefuadvisorLevel}\\
   {\xiaosan \heiti 培\hspace{8pt}养\hspace{8pt}单\hspace{8pt}位} & {\xiaosan \heiti \thedepartment} 
  \end{tabular}
\end{center}
  
\vspace{2.5cm}
\begin{center}
{\xiaosan \heiti \thecoverPageBottomDate}
\end{center}

\blankpage

\newpage
\thispagestyle{empty}
\setlength{\extrarowheight}{9pt}
\newgeometry{inner=3cm, outer=3cm, top=1.8cm, bottom=3cm, bindingoffset=0cm}
\begin{center}  
  \begin{tabular}{p{0.5\textwidth}>{\raggedleft\arraybackslash}p{0.5\textwidth}} 
   {\sihao 分\hspace{14pt}类\hspace{14pt}号：\uline{\thecategoryid \hspace{34pt}}} & {\sihao 密\hspace{28pt}级：\uline{\thesecretelevel \hspace{7pt}}} \\
   {\sihao 研究生学号：\uline{\thestudentid}} & {\sihao 学校代码：\uline{\theschoolid}}
  \end{tabular}\\
  
  \vspace{2.5cm}
  
  {\erhao \heiti 硕\hspace{5pt}士\hspace{5pt}学\hspace{5pt}位\hspace{5pt}论\hspace{5pt}文} \\

  \vspace{2.5cm}
  
  {\xiaoer \heiti \thetitle} \\
  
  \vspace{2.5cm}
  
  \begin{tabular}{>{\raggedleft\arraybackslash}p{0.21\textwidth}p{0.27\textwidth}>{\raggedleft\arraybackslash}p{0.24\textwidth}p{0.28\textwidth}} 
   {\sihao 作\hspace{9pt}者\hspace{9pt}姓\hspace{9pt}名：} & \multicolumn{3}{l}{{\sihao \theauthor}}  \\
  % {\sihao 指\hspace{9pt}导\hspace{9pt}教\hspace{9pt}师：} & \multicolumn{3}{l}{{\sihao \theadvisor \hspace{9pt} \theadvisorLevel \hspace{9pt} \theadvisorDepartment}}  \\
  {\sihao 指\hspace{9pt}导\hspace{9pt}教\hspace{9pt}师：} & \multicolumn{3}{l}{{\sihao \theadvisor \hspace{9pt} \theadvisorLevel \hspace{9pt} \thefuadvisor \hspace{9pt} \thefuadvisorLevel }}  \\
  % {\sihao 副\hspace{3.3pt}指\hspace{3.3pt}导\hspace{3.3pt}教\hspace{3.3pt}师：} & \multicolumn{3}{l}{{\sihao \thefuadvisor \hspace{9pt} \thefuadvisorLevel \hspace{9pt} \thefuadvisorDepartment}}  \\
   {\sihao 申请学位层次：} & {\sihao \thedegreeLevel}  & {\sihao 专\hspace{2pt}业\hspace{2pt}学\hspace{2pt}位\hspace{2pt}类\hspace{2pt}别：} & {\sihao \thesubjectCategory} \\
   {\sihao 专业领域名称：} & \multicolumn{3}{l}{{\sihao \thesubjectMajor}} \\
   {\sihao 论文提交日期：} & {\sihao \thepaperSubmitDate }  & {\sihao 论\hspace{2.6pt}文\hspace{2.6pt}答\hspace{2.6pt}辩\hspace{2.6pt}日\hspace{2.6pt}期：} & {\sihao \thepaperDefenseDate} \\
   {\sihao 学位授予日期：} & {\sihao \thedegreeAwardingDate} & {\sihao 答辩委员会主席：} &  {{\sihao \thedefenseChair \hspace{9pt} \thedefenseChairLevel \hspace{9pt}}}\\	
  \end{tabular}\\
  
  \vspace{4.8cm}
  {\sihao 大\hspace{5pt}连\hspace{5pt}民\hspace{5pt}族\hspace{5pt}大\hspace{5pt}学}\\
  {\sihao \thetitlePageBottomDate}
\end{center}

\blankpage
\newpage
\thispagestyle{empty}  
\setlength{\extrarowheight}{9pt}
\begin{center}
  {\sihao \quad} \\
  {\sihao \textbf{A Thesis in \thesubjectMajorEn}} \\
  
  \vspace{3cm}
  
  {\erhao \textbf{\thetitleEn} \\}
  
  \vspace{2cm}
  
  {\sihao \heitiEn by \hspace{0.1in} \theauthorEn} \\
  
  \vspace{3cm}
  
  \begin{tabular}{>{\raggedleft\arraybackslash}p{0.45\textwidth}p{0.55\textwidth}} 
   {\sihao Supervisor：} & {\sihao \theadvisorLevelEn \theadvisorEn \hspace{3.3pt} \thefuadvisorLevelEn \thefuadvisorEn}  \\
  % {\sihao Associate Supervisor：} & {\sihao \thefuadvisorLevelEn \thefuadvisorEn}  \\
  \end{tabular}\\
  
  \vspace{5cm}
  {\sanhao \textbf{Dalian Minzu University} \\}
  {\sanhao \textbf{\thetitlePageBottomDateEn} \\}
\end{center}


\blankpage
\newpage
\thispagestyle{empty}
\restoregeometry
\setlength{\extrarowheight}{9pt}  
\begin{center}
{\erhao \heiti 独创性声明}
\end{center}
\vspace{0.5cm}
\begin{spacing}{2}
{\sihao 本人声明所呈交的学位论文是在导师的指导下完成的。论文中取得的研究成果除加以标注和致谢的地方外，不包含其他人已经发表或撰写过的研究成果，也不包括本人为获得其他学位而使用过的材料。与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示诚挚的谢意。\\}
\end{spacing}
 {\centering
 \begin{tabular}{p{0.51\textwidth}>{\raggedleft\arraybackslash}p{0.45\textwidth}}
  \hfill & {\sihao 学位论文作者签名：\uline{\hspace{2.4cm}}} \\
  \hfill & {\sihao 签\hspace{18.5pt}字\hspace{18.5pt}日\hspace{18.5pt}期：\uline{\hspace{2.4cm}}} \\
 \end{tabular}}

\vspace{2cm}
\begin{center}
{\erhao \heiti 学位论文版权使用授权书}
\end{center}
\vspace{0.5cm}
\begin{spacing}{2}
{\sihao 本学位论文作者和指导教师完全了解大连民族大学有关保留、使用学位论文的规定：即学校有权保留并向国家有关部门或机构送交论文的复印件和磁盘，允许论文被查阅和借阅。本人同意大连民族大学可以将学位论文的全部或部分内容编入有关数据库进行检索、交流。\\}
{\sihao \indent 作者和导师同意网上交流的时间为作者获得学位后：\\}
{\sihao \indent \hspace{1.4cm}半年 $\square$ \hspace{1.2cm}一年 $\square$ \hspace{1.2cm}一年半 $\square$ \hspace{1.2cm}两年 $\square$\\}
\end{spacing}
 {\centering
 \begin{tabular}{p{0.51\textwidth}>{\raggedleft\arraybackslash}p{0.45\textwidth}}
  {\sihao 学位论文作者签名：\uline{\hspace{2.4cm}}} & {\sihao 导师签名：\uline{\hspace{2.4cm}}} \\
  {\sihao 签\hspace{18.5pt}字\hspace{18.5pt}日\hspace{18.5pt}期：\uline{\hspace{2.4cm}}} & {\sihao 签字日期：\uline{\hspace{2.4cm}}} \\
 \end{tabular}}
 
\blankpage
\newpage
\setcounter{page}{1}
\setcounter{pseudopage}{1}
\setlength{\extrarowheight}{5pt}
}

\ProcessOptions\relax

\newcommand{\standardhead}{
  \fancyhf{}
  \fancyhead[CO]{\fontsize{10.5pt}{12.6pt}\kaiti 大连民族大学硕士学位论文 \hfill \leftmark}
  \fancyhead[CE]{\fontsize{10.5pt}{12.6pt}\kaiti 大连民族大学硕士学位论文 \hfill \leftmark}
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont-\thepage-}
}

\pretocmd{\tableofcontents}{
  \fancyhf{}
  \fancyhead[C]{\fontsize{10.5pt}{12.6pt}\kaiti 大连民族大学硕士学位论文 \hfill 目录}
  \fancyfoot[CE,CO]{\fontsize{9pt}{10.8pt}\selectfont-\Roman{pseudopage}-}
  \pdfbookmark{目录}{toc}
}{}{}

\newcommand{\thesistableofcontents}{
  \tableofcontents
 \checkoddpage
\ifoddpage
\blankpage
\else
\newpage
\fi}


\renewcommand{\chaptermark}[1]{\markboth{第\zhnumber{\arabic{chapter}}章 \hspace{5.25pt}#1}{}}

\newcommand{\thesisacknowledgement}{
  \renewcommand\thesection{\arabic{section}}
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
  \setcounter{section}{0}
  \chapter*{致\hspace{12pt}谢}
  \addcontentsline{toc}{chapter}{致\hspace{12pt}谢}
  \markboth{致谢}{致谢}
  \thispagestyle{fancy}
}

\newcommand{\thesisresume}{
  \renewcommand\thesection{\arabic{section}}
  \addtocontents{toc}{\protect\setcounter{tocdepth}{0}}
  \setcounter{section}{0}
  \chapter*{个人简历、攻读硕士学位期间科研成果及科研项目}
  \addcontentsline{toc}{chapter}{个人简历、攻读硕士学位期间科研成果及科研项目}
  \markboth{个人简历、攻读硕士学位期间科研成果及科研项目}{个人简历、攻读硕士学位期间科研成果及科研项目}
  \thispagestyle{fancy}
}

\newcommand{\thesischapterexordium}{
    \newpage
  \addtocontents{toc}{\protect\setcounter{tocdepth}{4}}
  \standardhead
  \pagenumbering{arabic}
  \setcounter{page}{1}
%  \chapter{绪\hspace{6pt}论}
%    \chaptermark{绪论}
}

\newcommand{\thesisappendix}{
  \chapter*{附\chinesespace 录}
    \setcounter{section}{0}
    \addcontentsline{toc}{chapter}{附录}
    \markboth{附录}{附录}
    \thispagestyle{fancy}
    \renewcommand{\theequation}{a-\arabic{equation}}
    \renewcommand{\thetable}{a-\arabic{table}}
    \renewcommand{\thefigure}{a-\arabic{figure}}
}

\newcommand{\thesistranslationoriginal}{
  \chapter*{外文资料原文}
    \setcounter{section}{0}
    \addcontentsline{toc}{chapter}{外文资料原文}
    \markboth{外文资料原文}{外文资料原文}
    \thispagestyle{fancy}
    \renewcommand{\theequation}{\arabic{equation}}
    \renewcommand{\thetable}{\arabic{table}}
    \renewcommand{\thefigure}{\arabic{figure}}
    \renewcommand{\figurename}{Figure}
    \renewcommand{\tablename}{Table}
}

\newcommand{\thesistranslationchinese}{
  \chapter*{外文资料译文}
    \setcounter{section}{0}
    \addcontentsline{toc}{chapter}{外文资料译文}
    \markboth{外文资料译文}{外文资料译文}
    \thispagestyle{fancy}
    \renewcommand{\theequation}{\arabic{equation}}
    \renewcommand{\thetable}{\arabic{table}}
    \renewcommand{\thefigure}{\arabic{figure}}
    \renewcommand{\figurename}{图}
    \renewcommand{\tablename}{表}
}

%\makeatletter
%\renewcommand{\@biblabel}[1]{[#1]\hfill}
%\makeatother
%
%\patchcmd\thebibliography
%    {\labelsep}
%    {\labelsep\itemsep=0pt\parsep=0pt\relax}
%    {}
%    {\typeout{Couldn't patch the command}}
%
%\newenvironment{thesisbibliography}{
%  \begin{thebibliography}{lo}
%    \interlinepenalty=10000
%    \begin{spacing}{1.667}
%    \thispagestyle{fancy}
%    \small
%}{
%    \end{spacing}
%  \end{thebibliography}
%}
%
%\pretocmd{\bibliography}{
%  \thispagestyle{fancy}
%  \interlinepenalty=10000
%  \begin{spacing}{1.667}
%}{}{}
%
%\apptocmd{\bibliography}{
%  \end{spacing}
%}{}{}

%\newcommand{\thesisloadbibliography}[2][]{
%  \ifthenelse{
%      \equal{#1}{nocite}
%    }{
%      \nocite{*}
%    }{}
%  \bibliographystyle{gbt7714-2005}
%  \bibliography{#2}
%}






%\newcites{achievement}{攻读\chinesedegreename{}学位期间取得的成果}
%
%\newenvironment{thesisachievement}{
%  \renewcommand{\bibname}{攻读\chinesedegreename{}学位期间取得的成果}
%  \begin{thebibliography}{lo}
%  \interlinepenalty=10000
%  \begin{spacing}{1.667}
%  \thispagestyle{fancy}
%  \small
%}{
%  \end{spacing}\end{thebibliography}
%  \renewcommand{\bibname}{参考文献}
%}
%
%\newcommand{\thesisloadachievement}[1]{
%  \nociteachievement{*}
%  \renewcommand{\bibname}{攻读\chinesedegreename{}学位期间取得的成果}
%  \thispagestyle{fancy}
%  \begin{spacing}{1.667}
%  \bibliographystyleachievement{thesis-uestc}
%  \bibliographyachievement{#1}
%  \end{spacing}
%  \renewcommand{\bibname}{参考文献}
%}



\newtheoremstyle{dotless}{0pt}{0pt}{\normalfont}{24pt}{\heiti}{}{ }{}
\theoremstyle{dotless}
\newtheorem{theorem}{定理}[chapter]
\newtheorem{axiom}[theorem]{公理}
\newtheorem{corollary}[theorem]{推论}
\newtheorem{lemma}[theorem]{引理}
\newtheorem{definition}[theorem]{定义}
\newtheorem{example}[theorem]{例子}


\renewcommand{\thetheorem}{\arabic{chapter}.\arabic{theorem}}
\renewcommand{\theaxiom}{\arabic{chapter}.\arabic{axiom}}
\renewcommand{\thecorollary}{\arabic{chapter}.\arabic{corollary}}
\renewcommand{\thelemma}{\arabic{chapter}.\arabic{lemma}}
\renewcommand{\thedefinition}{\arabic{chapter}.\arabic{definition}}
\renewcommand{\theexample}{\arabic{chapter}.\arabic{example}}
\renewcommand{\qedsymbol}{$\blacksquare$}
\renewcommand{\proofname}{证明}

\makeatletter
\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed}
  \normalfont
  \topsep0pt \partopsep0pt
  \trivlist
  \item[\hskip5\labelsep
        \heiti
    #1\@addpunct{:}]\ignorespaces
}{
  \popQED\endtrivlist\@endpefalse
}
\makeatother

\newcommand{\citing}[1]{\textsuperscript{\cite{#1}}}
\setlist{noitemsep}
\setlist{nolistsep}

\AtBeginDocument{
  \setlength{\abovedisplayskip}{8pt}
  \setlength{\belowdisplayskip}{8pt}
  \setlength{\belowdisplayshortskip}{8pt}
  \setlength{\abovedisplayshortskip}{8pt}
}


\endinput
