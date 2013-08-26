%{{{ ФОРМАТ СТРАНИЦЫ -----------------------------------------------------------
% Стиль документа и размер листа
\documentclass[a4paper,12pt,russian]{extarticle}
% Стиль страницы
%\pagestyle{plain}
\pagestyle{empty}
% Поля
\usepackage[left=2.5cm,right=2cm,top=2cm,bottom=2cm,bindingoffset=0cm]{geometry}
% Интервал
\linespread{1.3}
\usepackage{setspace}
% Расстановка абзацев
\usepackage{indentfirst}
\setlength{\parindent}{1.5cm}
% Кирилллица в формулах
\usepackage{mathtext}
% Кодировка
\usepackage[utf8x]{inputenc}
% Используемые языки
\usepackage[russian]{babel}
\usepackage{misccorr}
% Шрифт
\usepackage[T2A]{fontenc}
%Times New Roman
\usepackage{pscyr}
\renewcommand{\rmdefault}{ftm}
% Отсутствие висячих строк
\clubpenalty=10000
\widowpenalty=10000

%Настройка нумерованного списка
\newenvironment{list1}
{\begin{enumerate}
	\setlength{\topsep}{0pt}
	\setlength{\partopsep}{0pt}
	\setlength{\itemsep}{1pt}
	\setlength{\parskip}{0pt}
	\setlength{\parsep}{0pt}}
{\end{enumerate}}

%Настройка маркированного списка
\newenvironment{list*}
{\begin{itemize}
	\setlength{\topsep}{0pt}
	\setlength{\partopsep}{0pt}
	\setlength{\itemsep}{1pt}
	\setlength{\parskip}{0pt}
	\setlength{\parsep}{0pt}}
{\end{itemize}}

% ПАКЕТЫ -------------------------------------------------------------------%{{{
%Копирование текста из PDF
\usepackage{cmap}
%Гиперссылки
\usepackage{hyperref}
%Графика
\usepackage{graphicx}
\usepackage{fancyhdr}
\usepackage{color}
%Подписи к листингам и ирисункам
\usepackage{ccaption}
\captiondelim{. }
%Математические пакеты
\usepackage[fleqn]{amsmath}
\usepackage{mathtools}
\usepackage{cancel}
\usepackage[integrals]{wasysym}

%Вертикальная черта в матрицах
\makeatletter
\renewcommand*\env@matrix[1][*\c@MaxMatrixCols c]{%
	\hskip -\arraycolsep
	\let\@ifnextchar\new@ifnextchar
	\array{#1}}
\makeatother

% Оформление листингов%{{{
\usepackage{caption}
\usepackage{listings}
\lstset{
	inputencoding=utf8x,
	extendedchars=\true,
	basicstyle=\footnotesize\ttfamily,
	numbers=left,
	numberstyle=\scriptsize,
	escapechar=|+,
	stepnumber=1,
	numbersep=5pt,
	tabsize=2,
	breaklines=true,
	keywordstyle=\color{blue}\textbf,
%	stringstyle=\color{red}\ttfamily,
	showspaces=false,
	showstringspaces=falseб
	showtabs=false,
	xleftmargin=17pt,
	framexleftmargin=17pt,	
	framexrightmargin=5pt,
	framexbottommargin=4pt
}
\DeclareCaptionFont{white}{\color{white}}
\DeclareCaptionFormat{listing}{
	\colorbox[cmyk]{0.43, 0.35, 0.35, 0.01}{
	\parbox{0.993\linewidth}{\hspace{15pt}#1#2#3}}
}
\captionsetup[lstlisting]{
	format=listing,labelfont=white,textfont=white,
	singlelinecheck=false,margin=-2.6pt,
	font={bf,footnotesize}
}
\renewcommand{\lstlistingname}{Листинг}%}}}

%}}}
%}}} ---------------------------------------------------------------------------
%{{{ ДОКУМЕНТ-------------------------------------------------------------------
\begin{document}
\input{title.tex} % Титульный лист

\end{document}
%}}} ---------------------------------------------------------------------------
