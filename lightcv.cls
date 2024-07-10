\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lightcv}[2024-7-09 LightCV is a \LaTeX\ for creating CVs. The goal is to create a simple, easy to use template rather than a robust class. The class is based on the article class. The target audience is people who are not familiar with \LaTeX\ and want to create a CV or resume.]

\RequirePackage[dvipsnames*,svgnames]{xcolor}
\RequirePackage{pagecolor}

% Base Modes
\definecolor{uberdarkgray}{gray}{0.15}
\DeclareOption{graymode}{\pagecolor{uberdarkgray}\color{gray!30}}
\DeclareOption{lightmode}{\pagecolor{white}\color{black}}
\DeclareOption{darkmode}{\pagecolor{black!90}\color{white}}


\DeclareOption{aquamarinemode}{\pagecolor{Aquamarine}\color{black}}
\DeclareOption{blackmode}{\pagecolor{Black}\color{white}}
\DeclareOption{bluemode}{\pagecolor{Blue}\color{white}}
\DeclareOption{bluegreenmode}{\pagecolor{BlueGreen}\color{black}}
\DeclareOption{bluevioletmode}{\pagecolor{BlueViolet}\color{white}}
\DeclareOption{brickredmode}{\pagecolor{BrickRed}\color{white}}
\DeclareOption{brownmode}{\pagecolor{Brown}\color{white}}
\DeclareOption{burntorangemode}{\pagecolor{BurntOrange}\color{black}}
\DeclareOption{cadetbluemode}{\pagecolor{CadetBlue}\color{white}}
\DeclareOption{carnationpinkmode}{\pagecolor{CarnationPink}\color{black}}
\DeclareOption{ceruleanmode}{\pagecolor{Cerulean}\color{black}}
\DeclareOption{cornflowerbluemode}{\pagecolor{CornflowerBlue}\color{black}}
\DeclareOption{cyanmode}{\pagecolor{Cyan}\color{black}}
\DeclareOption{dandelionmode}{\pagecolor{Dandelion}\color{black}}
\DeclareOption{darkorchidmode}{\pagecolor{DarkOrchid}\color{white}}
\DeclareOption{emeraldmode}{\pagecolor{Emerald}\color{black}}
\DeclareOption{forestgreenmode}{\pagecolor{ForestGreen}\color{white}}
\DeclareOption{fuchsiamode}{\pagecolor{Fuchsia}\color{white}}
\DeclareOption{goldenrodmode}{\pagecolor{Goldenrod}\color{black}}
\DeclareOption{greenmode}{\pagecolor{Green}\color{white}}
\DeclareOption{greenyellowmode}{\pagecolor{GreenYellow}\color{black}}
\DeclareOption{junglegreenmode}{\pagecolor{JungleGreen}\color{black}}
\DeclareOption{lavendermode}{\pagecolor{Lavender}\color{black}}
\DeclareOption{limemode}{\pagecolor{lime}\color{black!90}}
\DeclareOption{limegreenmode}{\pagecolor{LimeGreen}\color{black}}
\DeclareOption{mahoganymode}{\pagecolor{Mahogany}\color{white}}
\DeclareOption{magentamode}{\pagecolor{Magenta}\color{black}}
\DeclareOption{maroonmode}{\pagecolor{Maroon}\color{white}}
\DeclareOption{melonmode}{\pagecolor{Melon}\color{black}}
\DeclareOption{midnightbluemode}{\pagecolor{MidnightBlue}\color{white}}
\DeclareOption{mulberrymode}{\pagecolor{Mulberry}\color{white}}
\DeclareOption{navybluemode}{\pagecolor{NavyBlue}\color{white}}
\DeclareOption{olivegreenmode}{\pagecolor{OliveGreen}\color{white}}
\DeclareOption{orangemode}{\pagecolor{Orange}\color{black}}
\DeclareOption{orangeredmode}{\pagecolor{OrangeRed}\color{white}}
\DeclareOption{orchidmode}{\pagecolor{Orchid}\color{black}}
\DeclareOption{peachmode}{\pagecolor{Peach}\color{black}}
\DeclareOption{periwinklemode}{\pagecolor{Periwinkle}\color{white}}
\DeclareOption{pinegreenmode}{\pagecolor{PineGreen}\color{white}}
\DeclareOption{pinkmode}{\pagecolor{pink!50}\color{black!90}}
\DeclareOption{plummode}{\pagecolor{Plum}\color{white}}
\DeclareOption{processbluemode}{\pagecolor{ProcessBlue}\color{black}}
\DeclareOption{purplemode}{\pagecolor{Purple}\color{white}}
\DeclareOption{rawsiennamode}{\pagecolor{RawSienna}\color{white}}
\DeclareOption{redmode}{\pagecolor{Red}\color{white}}
\DeclareOption{redorangemode}{\pagecolor{RedOrange}\color{white}}
\DeclareOption{redvioletmode}{\pagecolor{RedViolet}\color{white}}
\DeclareOption{rhodaminemode}{\pagecolor{Rhodamine}\color{black}}
\DeclareOption{royalbluemode}{\pagecolor{RoyalBlue}\color{white}}
\DeclareOption{royalpurplemode}{\pagecolor{RoyalPurple}\color{white}}
\DeclareOption{rubineredmode}{\pagecolor{RubineRed}\color{white}}
\DeclareOption{salmonmode}{\pagecolor{Salmon}\color{black}}
\DeclareOption{seagreenmode}{\pagecolor{SeaGreen}\color{white}}
\DeclareOption{sepiamode}{\pagecolor{Sepia}\color{white}}
\DeclareOption{skybluemode}{\pagecolor{SkyBlue}\color{black}}
\DeclareOption{springgreenmode}{\pagecolor{SpringGreen}\color{black}}
\DeclareOption{tanmode}{\pagecolor{Tan}\color{black}}
\DeclareOption{tealbluemode}{\pagecolor{TealBlue}\color{white}}
\DeclareOption{thistlemode}{\pagecolor{Thistle}\color{black}}
\DeclareOption{turquoisemode}{\pagecolor{Turquoise}\color{black}}
\DeclareOption{violetmode}{\pagecolor{Violet}\color{white}}
\DeclareOption{violetredmode}{\pagecolor{VioletRed}\color{white}}
\DeclareOption{yellowmode}{\pagecolor{yellow}\color{black}}
\DeclareOption{yellowgreenmode}{\pagecolor{YellowGreen}\color{black}}

%%%%%%%%%%%%



\DeclareOption{p1noheader}{\AtBeginDocument{\thispagestyle{empty}}}
\DeclareOption{p1header}{} % Define an option to enable/enable the header
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax % Process the options
% LOAD CLASS
\LoadClass[]{article}

\RequirePackage[breaklinks]{hyperref}
\RequirePackage{url}
\hypersetup{colorlinks=true, breaklinks=true, colorlinks=true,
    linkcolor=blue, filecolor=magenta, urlcolor=magenta}
\urlstyle{same}

\RequirePackage[margin=1in, bottom=0.8in, headheight=18pt]{geometry}
\RequirePackage{enumitem, etaremune, longtable, array} 
% Lengths
\setlength{\parindent}{0pt} % 0 par indentation
\setlength{\headsep}{0.5cm} % Space between header and body





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
\newcommand{\lightheadertitle}[1][CV]{#1}
\newcommand{\lightheadersep}[1][-]{#1}
\fancyhead[L]{\large \sffamily \storedauthor}
\fancyhead[R]{\large \sffamily \lightheadertitle\ \lightheadersep\ \thepage}


% SECTION FORMATTING 4
\RequirePackage{titlesec}
\titlespacing*{\section}{0pt}{0.5\baselineskip}{.25\baselineskip}
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
\setlength{\details}{0.81\textwidth}
%\LTleft{1.25em}
\newenvironment{dated}[1][Employment]
{\section*{#1}\vspace{-\baselineskip}\setlength\LTleft{.0275\textwidth}\begin{longtable}{@{}lp{\details}@{}}}{\end{longtable}}

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
\setlength{\catsep}{0.25em}
\newlength{\catnameboxwidth}
\setlength{\catnameboxwidth}{.15\textwidth}
\newlength{\catdescboxwidth}
\setlength{\catdescboxwidth}{.8\textwidth}

\newenvironment{catsec}[1][Category Section]{\section*{#1}}{\vspace{.5\baselineskip}}

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
      