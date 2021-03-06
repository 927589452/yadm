%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thin Formal Letter
% LaTeX Template
% Version 2.0 (7/2/17)
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% Original author:
% WikiBooks (http://en.wikibooks.org/wiki/LaTeX/Letters) with modifications by
% Vel (vel@LaTeXTemplates.com)
%
% License:
% CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------

\documentclass[10pt]{letter} % 10pt font size default, 11pt and 12pt are also possible

\usepackage{geometry} % Required for adjusting page dimensions

%\longindentation=0pt % Un-commenting this line will push the closing "Sincerely," to the left of the page

\geometry{
	paper=a4paper, % Change to letterpaper for US letter
	top=3cm, % Top margin
	bottom=1.5cm, % Bottom margin
	left=4.5cm, % Left margin
	right=4.5cm, % Right margin
	%showframe, % Uncomment to show how the type block is set on the page
}

\usepackage[T1]{fontenc} % Output font encoding for international characters
\usepackage[utf8]{inputenc} % Required for inputting international characters

\usepackage{stix} % Use the Stix font by default

\usepackage{microtype} % Improve justification

%----------------------------------------------------------------------------------------
%	YOUR NAME & ADDRESS SECTION
%----------------------------------------------------------------------------------------

\signature{Jens Heinrich} % Your name for the signature at the bottom

%\address{123 Broadway \\ City, State 12345 \\ (000) 111-1111} % Your address and phone numbe
\address{ (<>) }

%----------------------------------------------------------------------------------------

\begin{document}

%----------------------------------------------------------------------------------------
%	ADDRESSEE SECTION
%----------------------------------------------------------------------------------------

%\begin{letter}{Nathan Drake \\ LaTeXTemplates.com \\ 321 Pleasant Lane \\ City, State 12345} % Name/title of the addressee
\begin{letter}{ (<>) } % Name/title of the addressee

%----------------------------------------------------------------------------------------
%	LETTER CONTENT SECTION
%----------------------------------------------------------------------------------------

%\opening{\textbf{Dear Sir or Madam,}}
	\opening{\textbf{(<>),}}

\vspace{2\parskip} % Extra whitespace for aesthetics
\closing{Sincerely,}
\vspace{2\parskip} % Extra whitespace for aesthetics

\ps{P.S. You can find additional information attached to this letter.} % Postscript text, comment this line to remove it

\encl{Copyright permission form} % Enclosures with the letter, comment this line to remove it

%----------------------------------------------------------------------------------------

\end{letter}

\end{document}
