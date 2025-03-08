\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{custom-example}[2024/04/18 v0.1]

% para mais detalhes sobre as opções:
% http://en.wikibooks.org/wiki/LaTeX/Creating_Packages

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions\relax
\LoadClass{article}

\endinput