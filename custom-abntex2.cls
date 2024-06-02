%% vim: et ts=2 sts=2 sw=2

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{custom-abntex2}[2024/04/18 v0.1]
\usepackage[utf8]{inputenc} % Codificacao do documento atual, isto é, dessa classe
\usepackage{lastpage} % Para total de páginas

% para mais detalhes sobre as opções:
% http://en.wikibooks.org/wiki/LaTeX/Creating_Packages

% Repassa todos os parametros a classe abntex2,
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}

\ProcessOptions\relax
\LoadClass{abntex2}

% Roman family {\rmfamily Roman family}
% Sans serif family {\sffamily Sans serif family}
% Typewriter family {\ttfamily Typewriter family}
\renewcommand{\familydefault}{\rmdefault}
\newcommand{\fontdefault}{\rmfamily}

% Comandos de dados - tipo de trabalho
\providecommand{\imprimirmateria}{}
\newcommand{\materia}[1]{\renewcommand{\imprimirmateria}{#1}}

% ---
% Impressão da Capa
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    
    {\bfseries\fontdefault\imprimirinstituicao}
    \\
    {\fontdefault\imprimirmateria}
    \vspace*{\fill}
  
    {\fontdefault\imprimirautor}
    \vspace*{\fill}
    \vspace*{\fill}

    \begin{center}
        \fontdefault\bfseries\imprimirtitulo
    \end{center}
    \vspace*{\fill}
    \vspace*{\fill}
    \vspace*{\fill}
    \vspace*{\fill}
    
    {\fontdefault\imprimirlocal

    \fontdefault\imprimirdata
    
    \vspace*{1cm}}
    
  \end{capa}
}
% ---

% ---
% Conteudo padrao da Folha de Rosto
\renewcommand{\folhaderostocontent}{
  \begin{center}

    %\vspace*{1cm}
    {\fontdefault\imprimirautor}
	
    \vspace*{\fill}\vspace*{\fill}
    \begin{center}
      \fontdefault\bfseries\imprimirtitulo
    \end{center}
    \vspace*{\fill}
	
    \abntex@ifnotempty{\imprimirpreambulo}{%
      \hspace{.45\textwidth}
      \begin{minipage}{.5\textwidth}
         \fontdefault\imprimirpreambulo
       \end{minipage}%
    }%
    
    {%
        \hspace{.45\textwidth}
        \begin{minipage}{.5\textwidth}
            {\fontdefault\imprimirorientadorRotulo~\imprimirorientador\par}
            \abntex@ifnotempty{\imprimircoorientador}{%
               {\fontdefault\imprimircoorientadorRotulo~\imprimircoorientador}%
            }%
        \end{minipage}%
        \vspace*{\fill}
    }%

    {\fontdefault\imprimirlocal}
    \par
    {\fontdefault\imprimirdata}
    \vspace*{1cm}

  \end{center}
}
% ---

% ---
% Ficha Catalografica
\providecommand{\imprimirpalavraschaves}{}
\newcommand{\palavraschaves}[1]{\renewcommand{\imprimirpalavraschaves}{#1}}

\newcommand{\imprimirfichacatalografica}{
  \begin{fichacatalografica}
    \sffamily
    \vspace*{\fill}					% Posição vertical
    \begin{center}					% Minipage Centralizado
    \fbox{\begin{minipage}[c][8cm]{13.5cm}		% Largura
    \small
    \imprimirautor
    %Sobrenome, Nome do autor
    
    \hspace{0.5cm} \imprimirtitulo  / \imprimirautor. --
    \imprimirlocal, \imprimirdata.
    
    \hspace{0.5cm} \thelastpage p. : il. ; 30 cm.\\
    
    \hspace{0.5cm} \imprimirorientadorRotulo~\imprimirorientador\\
    
    \hspace{0.5cm}
    \parbox[t]{\textwidth}{\imprimirtipotrabalho~--~\imprimirinstituicao,
    \imprimirdata.}\\
    
    \hspace{0.5cm}
      \imprimirpalavraschaves\space
      I. Orientador.
      II. Título 			
    \end{minipage}}
    \end{center}
  \end{fichacatalografica}
}
% ---

% ---
% Folha de Aprovacao
\NewDocumentCommand \imprimirconvidado {>{\SplitList{;}} m}
  {\ProcessList{#1}{\formatarconvidado}}

\newcommand{\formatarconvidado}[1]{
  \assinatura{\textbf{#1} \\ Convidado}
}

\providecommand{\imprimirconvidados}{}
\newcommand{\convidados}[1]{\renewcommand{\imprimirconvidados}{\imprimirconvidado{#1}}}

\newcommand{\imprimirfolhadeaprovacao}{
  \begin{folhadeaprovacao}

    \begin{center}
      {\ABNTEXchapterfont\imprimirautor}
  
      \vspace*{\fill}\vspace*{\fill}
      \begin{center}
        \ABNTEXchapterfont\bfseries\imprimirtitulo
      \end{center}
      \vspace*{\fill}
      
      \hspace{.45\textwidth}
      \begin{minipage}{.5\textwidth}
          \imprimirpreambulo
      \end{minipage}%
      \vspace*{\fill}
     \end{center}
          
     Trabalho aprovado. \imprimirlocal, \imprimirdata:
  
     \assinatura{\textbf{\imprimirorientador} \\ Orientador} 
     \imprimirconvidados
        
     \begin{center}
      \vspace*{0.5cm}
      {\imprimirlocal}
      \par
      {\imprimirdata}
      \vspace*{1cm}
    \end{center}
    
  \end{folhadeaprovacao}
}
% ---

% ---
% Fontes padroes de part, chapter, section, subsection e subsubsection
%\renewcommand{\ABNTEXchapterfont}{\fontdefault}
%\renewcommand{\ABNTEXchapterfontsize}{\normalsize}

%\renewcommand{\ABNTEXpartfont}{\ABNTEXchapterfont}
%\renewcommand{\ABNTEXpartfontsize}{\normalsize}

\renewcommand{\ABNTEXsectionfont}{\fontdefault}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsectionfont}{\ABNTEXsectionfont}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsectionfont}{\ABNTEXsubsectionfont}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsubsectionfont}{\ABNTEXsubsectionfont}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}
% ---

% -----
% Chapter configuration
% -----
\setlength{\afterchapskip}{\onelineskip} % change skip chapter
\setlength{\beforechapskip}{0pt}
\renewcommand{\chaptitlefont}{\bfseries}

% -----
% Section configuration
% -----
\setsecheadstyle{\ABNTEXsectionfont\ABNTEXsectionfontsize\ABNTEXsectionupperifneeded\bfseries}
\setsubsecheadstyle{\ABNTEXsubsectionfont\ABNTEXsubsectionfontsize\ABNTEXsubsectionupperifneeded\bfseries}
\setsubsubsecheadstyle{\ABNTEXsubsubsectionfont\ABNTEXsubsubsectionfontsize\ABNTEXsubsubsectionupperifneeded\bfseries}
\setsubsubsubsecheadstyle{\ABNTEXsubsubsubsectionfont\ABNTEXsubsubsubsectionfontsize\ABNTEXsubsubsubsectionupperifneeded\bfseries}
\setsecnumformat{\csname the#1\endcsname\space} % change the spacing

% Re-Configura layout para elementos textuais
\renewcommand{\textual}{%
    \pagestyle{abntfooters}%
    \aliaspagestyle{chapter}{abntchapfirst}% customizing chapter pagestyle
    
    \nouppercaseheads%
    \bookmarksetup{startatroot}% 
}

% -----
% Declaracoes de rodapes 
% -----
% Rodape padrao
\makepagestyle{abntfooters}
\makeevenfoot{abntfooters}{}{}{}
\makeoddfoot{abntfooters}{}{}{\fontdefault\ABNTEXfontereduzida\thepage}

% Rodape do inicio do capitulo
\makepagestyle{abntchapfirst}
\makeevenfoot{abntchapfirst}{}{}{}
\makeoddfoot{abntchapfirst}{}{}{\fontdefault\ABNTEXfontereduzida\thepage}
% ---