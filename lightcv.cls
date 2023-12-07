\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lightcv}[2023-12-01 LightCV is a \LaTeX\ for creating CVs. The goal is to create a simple, easy to use template rather than a robust class. The class is based on the article class. The target audience is people who are not familiar with \LaTeX\ and want to create a CV or resume.]

\RequirePackage{xcolor, pagecolor}
\definecolor{uberdarkgray}{gray}{0.15}
\DeclareOption{darkmode}{\pagecolor{uberdarkgray}\color{gray!30}}
\DeclareOption{lightmode}{\pagecolor{white}\color{black}}
\DeclareOption{p1noheader}{\AtBeginDocument{\thispagestyle{empty}}}
\DeclareOption{p1header}{} % Define an option to enable/enable the header
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax % Process the options
% LOAD CLASS
\LoadClass[]{article}

\RequirePackage[margin=1in, bottom=0.8in, headheight=18pt]{geometry}
\RequirePackage{enumitem, etaremune, longtable, array} 
% Lengths
\setlength{\parindent}{0pt} % 0 par indentation
\setlength{\headsep}{0.5cm} % Space between header and body

\RequirePackage[breaklinks]{hyperref}
\RequirePackage{url}
\hypersetup{colorlinks=true, breaklinks=true}

% HEADERS AND FOOTERS
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}%clear all headers and footers
\renewcommand{\headrulewidth}{1pt}

% Fonts
\RequirePackage{Archivo}
\RequirePackage[T1]{fontenc}
\RequirePackage{fontawesome} % For Icons
\RequirePackage{calc}
\RequirePackage{ifthen}

% Store the author information to use as title and header
\newcommand{\storedauthor}{} % init the var
\let\originalauthor\author
\renewcommand{\author}[1]{%
  \originalauthor{#1}%
  \if\relax\detokenize{#1}\relax
    % If the argument is blank, set the default value
    \def\storedauthor{Teddy McTedderson}%
  \else
    % Otherwise, use what user provides for \author{}
    \def\storedauthor{#1}%
  \fi
}
\fancyhead[L]{\large \sffamily \storedauthor}
\fancyhead[R]{\large \sffamily CV - \thepage}

% SECTION FORMATTING 4
\RequirePackage{titlesec}
\titlespacing*{\section}{0pt}{0.75\baselineskip}{.25\baselineskip}
\titleformat{\section}{\Large\sffamily}{\thesection}{1em}{}

% Contact Row Command
\newcommand{\crow}[1][]{\item[#1]}
\newlength{\contactleftmargin}
\setlength{\contactleftmargin}{.15\textwidth}
\newlength{\contactrightmargin}
\setlength{\contactrightmargin}{.05\textwidth}
\newlength{\contactsep}
\setlength{\contactsep}{.05\textwidth}
%% CONTACT COMMAND
% Define your contact info command
\NewDocumentCommand{\ContactInfo}{O{1}oo}{
  {\centering\Huge\storedauthor\par\vspace{0.25em}\normalsize}%\sffamily\
  \ifthenelse{#1=1}{% Single contact info
  \begin{minipage}[t]{1\textwidth}
      \begin{itemize}[noitemsep,topsep=0pt, partopsep=0pt, leftmargin=0em]\centering
        #2
      \end{itemize}
    \end{minipage}
  }{%
    \ifthenelse{#1=2}{% Double column contact info
      {\hspace{\contactleftmargin}}
      \begin{minipage}[t]{.35\textwidth}%
        \begin{itemize}[noitemsep,topsep=0pt, partopsep=0pt, leftmargin=0em]
          #2
        \end{itemize}
      \end{minipage}
      \hspace{\contactsep}
      \begin{minipage}[t]{.35\textwidth}%
        \begin{itemize}[noitemsep,topsep=0pt,partopsep=0pt, leftmargin=0em]
          #3
        \end{itemize}
      \end{minipage}
      \hspace{\contactrightmargin}
    }{%
    }%
  }% End of ifthenelse
}

%% The DATED ENVIRONMENT
% \newenvironment{dated}[1][Employment] - Used to create a section with a date on the left and details on the right.
%\newlength{\startenddate}
%\setlength{\startenddate}{0.15\textwidth}
\newlength{\details}
\setlength{\details}{0.825\textwidth}

\newenvironment{dated}[1][Employment]
{\section*{#1}\vspace{-\baselineskip}\setlength\LTleft{1.25em}\begin{longtable}{@{}lp{\details}@{}}}{\end{longtable}}

%% RLIST ENVIRONMENT
% \newenvironment{rlist}[1][Publications] - Used to create a section with a reverse enumerated list. Use is just like a list environment: \begin{rlist}\item First item \item Second item \end{rlist} Optional second argument can be used to specify the type of list (e.g. enumerate, itemize, description, etc.)
\newlength{\rlistleftmargin}
\setlength{\rlistleftmargin}{2.5em}
\NewDocumentEnvironment{rlist}{O{Publications} O{etaremune}}{
    \section*{#1}
    \begin{#2}[leftmargin=\rlistleftmargin, labelsep=0.5em]
    \setlength{\itemsep}{0pt}
}{
    \end{#2}
}


%% CATSEC ENVIRONMENT
\newlength{\catsep}
\setlength{\catsep}{0.5em}
\newlength{\catnameboxwidth}
\setlength{\catnameboxwidth}{.15\textwidth}
\newlength{\catdescboxwidth}
\setlength{\catdescboxwidth}{.8\textwidth}

\newenvironment{catsec}[1][Category Section]{\section*{#1}}{\vspace{-10pt}}

\NewDocumentCommand{\catbox}{mm}{
    \hspace{\catindent}
    \begin{minipage}[t]{\catnameboxwidth}%
    #1%
    \end{minipage}
    \hspace{\catsep}
    \begin{minipage}[t]{\catdescboxwidth}%
      #2%
      \end{minipage}\hfill\smallbreak\par
        }

\newlength{\catindent}
\setlength{\catindent}{1em}
\NewDocumentCommand{\catlist}{mm}{%
\hspace{\catindent}
\begin{minipage}[t]{\catnameboxwidth}%
#1%
\end{minipage}
\hspace{\catsep}
\begin{minipage}[t]{\catdescboxwidth}%
    \begin{itemize}[leftmargin=0em,noitemsep,topsep=0pt, partopsep=0pt,labelsep=0.5em, label={-}]%
        #2%
    \end{itemize}%
  \end{minipage}\hfill\medbreak\par
  }
      