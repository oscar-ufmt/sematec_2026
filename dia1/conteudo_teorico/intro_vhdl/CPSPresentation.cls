%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Chair of Cyber-Physical-Systems
% Univ.-Prof. Dr. Elmar Rueckert
% Montanuniversität Leoben, Austria
% Latest Update: March 2023
%
% Disclaimer: The materials and source code are for personal use only. The material 
% is intended for educational purposes only. Reproduction of the material for any 
% purposes other than what is intended is prohibited. The content is to be used for 
% educational and non-commercial purposes only and is not to be changed, altered, 
% or used for any commercial endeavor without the express written permission of 
% Professor Rueckert. 
% 
% Parts of this latex template rely on an template by Frits Wenneker, 28/2/17, 
%  License: CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesPackage{CPSPresentation}[2023/03/09 CPS Student Presentation Template by Univ.-Prof. Dr. Elmar Rueckert]
%\LoadClass[11pt, a4paper, twoside]{article}
\LoadClass[11pt,aspectratio=169]{beamer}

\usepackage{microtype} % Better typography
\usepackage[hang, small, labelfont=bf, up, textfont=it]{caption} % Custom captions under/above tables and figures
\usepackage{listings} % To print python code


\setbeamercolor{structure}{fg=MULTurquoise}
\definecolor{MULTurquoise}{rgb}{0.5, 0.00, 0.5}
\definecolor{MULTurquoiseHighContrast}{RGB}{0.0, 84, 92}
\definecolor{MULSmoke}{rgb}{0.23, 0.22, 0.22}
\definecolor{Black}{rgb}{0, 0, 0}

\definecolor{mygreen}{RGB}{28,172,0} % color values Red, Green, Blue
\definecolor{mylilas}{RGB}{170,55,241}


\newif\if@uselowcontrast
\@uselowcontrastfalse

\DeclareOption{uselowcontrast}{\@uselowcontrasttrue}

\ExecuteOptions{}
\ProcessOptions*


\if@uselowcontrast
%Style - Low Contrast 
   \usetheme{Boadilla}
   \usetheme{Hannover}
\else
%Style - High Contrast
   \usetheme{Hannover}
   \usetheme{Boadilla}
\fi

\makeatother
\setbeamertemplate{footline}
{
  \leavevmode%
  \hbox{%
  \begin{beamercolorbox}[wd=.4\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
    \usebeamerfont{author in head/foot}\insertshortauthor
  \end{beamercolorbox}%
  \begin{beamercolorbox}[wd=.6\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}%
   \color{MULTurquoise}{ \usebeamerfont{title in head/foot}\insertshorttitle\hspace*{3em}
    \insertframenumber{} / \inserttotalframenumber\hspace*{1ex}}
  \end{beamercolorbox}}%
  \vskip0pt%
}

