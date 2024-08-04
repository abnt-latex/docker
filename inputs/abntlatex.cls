%%
%% This is file `abntlatex.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% abntlatex.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2024 by abntlatex
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.3c of this license
%% or (at your option) any later version. The latest version of this
%% license is in:
%% 
%% https://www.latex-project.org/lppl/
%% 
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2006/05/20 or later. TODO:
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abntlatex}
    [2024-07-17 v1.0 .dtx ABNT Latex]
\PassOptionsToClass{a4paper, 12pt}{article}%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage[a4paper,
                top    = 3.0cm,
                bottom = 2.0cm,
                left   = 3.0cm,
                right  = 2.0cm]{geometry}
\RequirePackage{mathptmx}
\RequirePackage[brazil]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc} 
\RequirePackage{indentfirst}
\RequirePackage{microtype}
\RequirePackage{hyperref}
\RequirePackage[brazilian, hyperpageref]{backref} 


\newcommand\pretext{%
  \frenchspacing%
  \pagestyle{empty}%
  \linespread{1.25}%
}
\newcommand*{\university}[1]{\gdef\@university{#1}}%
\newcommand*{\@university}{\university}%
\newcommand*{\subtitle}[1]{\gdef\@subtitle{#1}}%
\newcommand*{\@subtitle}{\subtitle}%
\newcommand*{\predate}[1]{\gdef\@predate{#1}}%
\newcommand*{\@predate}{\predate}%
\newcommand*{\documenttype}[1]{\gdef\@documenttype{#1}}%
\newcommand*{\@documenttype}{\documenttype}%
\newcommand*{\preamble}[1]{\gdef\@preamble{#1}}%
\newcommand*{\@preamble}{\preamble}%
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}%
\newcommand*{\@supervisor}{\supervisor}%
\newcommand*{\cosupervisor}[1]{\gdef\@cosupervisor{#1}}%
\newcommand*{\@cosupervisor}{\cosupervisor}%
\newcommand*{\keywords}[1]{\gdef\@keywords{#1}}%
\newcommand*{\@keywords}{\keywords}%
\renewcommand{\maketitle}{%
  \begin{center}%
    \begin{minipage}[t][0.5\textheight]{\textwidth}%
      \centering
      {\large\@university\par}%
      \vspace*{2cm}%
      {\large\begin{tabular}[t]{c}%
        \@author%
      \end{tabular}\par}%

      \vspace*{\fill}%
      {\LARGE\@title\par}%
      {\large\@subtitle\par}%
    \end{minipage}%

    \vspace*{\fill}%
    {\normalsize\@predate\par}%
    {\normalsize\@date}%
  \end{center}%
  \newpage%
}
\newcommand{\coverpage}{%
  \begin{center}%
    \begin{minipage}[t][0.33\textheight]{\textwidth}%
      \centering%
      {\normalsize\begin{tabular}[t]{c}%
        \@author%
      \end{tabular}\par}%
      \vspace*{\fill}%

      {\LARGE\@title\par}%
      {\large\@subtitle\par}%
    \end{minipage}
    \vspace*{\fill}%

    {\hspace{.45\textwidth}
    \begin{minipage}[c]{0.5\textwidth}%
      \linespread{1.0}%
      {\small\@documenttype\par}%
      {\small\@preamble\par}%
      {\small\@university\par}%
    \vspace*{\fill}%
    \end{minipage}\par}%
    \vspace*{\fill}%

    {\normalsize Orientador: \@supervisor \par}%
    {\normalsize Coorientador: \@cosupervisor \par}%
    \vspace*{\fill}%

    {\normalsize\@predate\par}%
    {\normalsize\@date}%
  \end{center}%
  \newpage%
}
\renewenvironment{abstract}{%
  \begin{center}%
    \textbf{\Large\abstractname\vspace{\z@}}%
  \end{center}%
}{%
  {\par\null\par\noindent\textbf{Palavras-chave: }}%
  \@keywords.
\newpage%
}
\addto\captionsbrazil{%
  \renewcommand{\listfigurename}{{Lista de Ilustrações}}%
}%

\renewcommand\listoffigures{%
  {\centering\section*{\listfigurename}}%

  {%
    \let\oldnumberline\numberline% TODO: Corrigir o aviso
    \renewcommand{\numberline}[1]{\figurename~\oldnumberline{%
      #1\hfill\textendash\hfill}%
    }%
    \@starttoc{lof}%
  }%
  \newpage
}
\renewcommand*\l@figure[2]{\@dottedtocline{1}{\z@}{2.3em}{#1}{#2}}%
\renewcommand\listoftables{%
  {\centering\section*{\listtablename}}%

  {%
    \let\oldnumberline\numberline% TODO: Corrigir o aviso
    \renewcommand\numberline[1]{\tablename~{#1\hfill\textendash\hfill}}%
    \@starttoc{lot}%
  }%
  \newpage
}
\renewcommand*\l@table[2]{\@dottedtocline{1}{\z@}{2.3em}{#1}{#2}}%
\renewcommand\@tocrmarg{2.0cm}

\renewcommand\tableofcontents{%
  {\centering\section*{\contentsname}}%

  \@starttoc{toc}%
  \newpage
}
\newlength{\@sizecontentnumber}%
\settowidth{\@sizecontentnumber}{0.0.0\quad}%
\renewcommand*\l@section[2]{\@dottedtocline{1}{\z@}%
  {\@sizecontentnumber}{\bfseries\slshape#1}{#2}%
}%
\renewcommand*\l@subsection[2]{\@dottedtocline{1}{\z@}%
  {\@sizecontentnumber}{\bfseries#1}{#2}%
}%
\renewcommand*\l@subsubsection[2]{\@dottedtocline{1}{\z@}%
  {\@sizecontentnumber}{#1}{#2}%
}%
\newcommand\maintext{%
  \frenchspacing%
  \pagestyle{myheadings}%
  \linespread{1.25}%
}
\renewcommand*{\@cite}[1]{(#1)}
\renewcommand\section{%
  \@startsection{section}{1}{\z@}%
  {\z@}%
  {12pt}%
  {\normalfont\Large\bfseries\slshape}%
}
\renewcommand\subsection{%
  \@startsection{subsection}{2}{\z@}%
  {-12pt}%
  {12pt}%
  {\normalfont\large\bfseries}%
}
\renewcommand\subsubsection{%
  \@startsection{subsubsection}{3}{\z@}%
  {-12pt}%
  {12pt}%
  {\normalfont\large}%
}
\newcommand\fontfigure[1]{\caption*{\small Fonte: #1}}
\newcommand\backtext{%
  \frenchspacing%
  \bibliographystyle{unsrt}%
  \pagestyle{myheadings}%
  \linespread{1.0}%
}
\renewcommand*{\@biblabel}[1]{\footnotemark[#1]}
\def\thebibliography#1{%
  \newpage%
  \phantomsection%
  \addcontentsline{toc}{section}{\protect\numberline{}\refname}%

  {\centering\section*{\refname}}%
  \list{\@biblabel{\arabic{enumi}}}%
    {\settowidth\labelwidth{(#1)}%
      \leftmargin\labelwidth\advance\leftmargin\labelsep%
        \usecounter{enumi}%
    }%
  \def\newblock{\hskip .11em plus .33em minus .07em}%
  \sloppy\clubpenalty4000\widowpenalty4000\sfcode`\.=1000\relax%
}
\renewcommand{\backref}{}
\renewcommand*{\backrefalt}[4]{
  \ifcase #1
    Nenhuma citação no texto.
  \or
    Citado na página #2.
  \else
    Citado #1 vezes nas páginas #2.
  \fi
}
\endinput % End of File.
\endinput
%%
%% End of file `abntlatex.cls'.
