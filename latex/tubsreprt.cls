%%
%% This is file `tubsreprt.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ../tubsvers.inc  (with options: `default,extra')
%% tubsdoc.dtx  (with options: `class,report,head')
%% tubsdoc.dtx  (with options: `class,report,option')
%% tubsfont.dtx  (with options: `class,report,option')
%% tubshead.dtx  (with options: `class,report,option')
%% tubstitlepage.dtx  (with options: `class,report,option')
%% tubsdoc.dtx  (with options: `class,report,execoption')
%% tubsdoc.dtx  (with options: `class,report,body')
%% tubsfont.dtx  (with options: `class,report,body')
%% tubshead.dtx  (with options: `class,report,body')
%% tubstitlepage.dtx  (with options: `class,report,body')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2011 by Enrico Jörns
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.2 of this license or (at your option) any later
%% version. The latest version of this license is in:
%% 
%%   http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of
%% LaTeX version 1999/12/01 or later.
%% 
\RequirePackage{ifthen}
\RequirePackage{scrlfile}%TODO: KOMA-Check?
\RequirePackage{etoolbox}%
\begingroup
  \makeatletter
  \ifx\tubslatexVersion\undefined
    \newcommand*{\check@tubslatexVersion}[1]{%
      \gdef\tubslatexVersion{#1}%
    }%
  \else
    \newcommand*{\check@tubslatexVersion}[1]{%
      \def\@tempa{#1}%
      \ifx\tubslatexVersion\@tempa\else
        \@latex@warning@no@line{%
          \noexpand\tubslatexVersion\space is
          `\tubslatexVersion',\MessageBreak
          but `#1' was expected!\MessageBreak
          You should not use classes, packages or files
          from\MessageBreak
          different tubslatex versions%
        }%
      \fi
    }
  \fi
  \check@tubslatexVersion{2020/11/30 v1.3.4-r149 tubslatex}%
\endgroup
\providecommand{\tubslatex}{tubs\LaTeX}
\AfterPackage*{ucs}{%
  \pretocmd{\author}{\PrerenderUnicode{ä,ö,ü,ß}}{}{}%
  \pretocmd{\title}{\PrerenderUnicode{ä,ö,ü,ß}}{}{}%
}
\AtBeginDocument{
  \@ifpackageloaded{hyperref}{%
    \@ifundefined{inputencodingname}{}{%
      \hypersetup{
        pdftitle = {\@title},
        pdfauthor = {\@author},
        pdfcreator = {\tubslatexVersion}
      }
    }
  }{}
}
\RequirePackage{ifthen}
\newcommand*{\tubsClassName}{%
  tubsreprt%
}
\newcommand*{\BaseClass}{%
  scrreprt%
}
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{\tubsClassName}[\tubslatexVersion\space document class (\BaseClass)]
\newcommand*{\@fsfbs@sub}{}
\RequirePackage{xkeyval}%
\DeclareOptionX{mono}{%
  \PassOptionsToPackage{mono}{tubslogo}
  \PassOptionsToPackage{mono}{tubsflowfram}
}
\DeclareOptionX{cmyk}{%
  \PassOptionsToPackage{cmyk}{tubscolors}
  \PassOptionsToPackage{cmyk}{tubslogo}
}
\DeclareOptionX{rgb}{%
  \PassOptionsToPackage{rgb}{tubscolors}
  \PassOptionsToPackage{rgb}{tubslogo}
}
\DeclareOptionX{landscape}{%
  \PassOptionsToPackage{landscape}{tubstypearea}
  \PassOptionsToClass{landscape}{\BaseClass}
}
\DeclareOptionX{paperwidth}{%
  \PassOptionsToPackage{paperwidth=#1}{tubstypearea}
}
\DeclareOptionX{paperheight}{%
  \PassOptionsToPackage{paperheight=#1}{tubstypearea}
}
\define@boolkey{\tubsClassName.cls}[tb@]{twoside}[true]{%
  \iftb@twoside
    \PassOptionsToPackage{twoside=true}{tubstypearea}
    \PassOptionsToPackage{twoside=true}{tubsstyle}
  \PassOptionsToClass{twoside=true}{\BaseClass}
  \else
    \PassOptionsToPackage{twoside=false}{tubstypearea}
    \PassOptionsToPackage{twoside=false}{tubsstyle}
  \PassOptionsToClass{twoside=false}{\BaseClass}
  \fi
}
\DeclareOptionX{oneside}{%
\setkeys{\tubsClassName.cls}{twoside=false}
}
\DeclareOptionX{marginleft}{%
  \PassOptionsToPackage{marginleft}{tubstypearea}
}
\DeclareOptionX{marginright}{%
  \PassOptionsToPackage{marginright}{tubstypearea}
}
\DeclareOptionX{extramargin}{%
  \PassOptionsToPackage{extramargin}{tubstypearea}
}
\DeclareOptionX{bcor}{%
  \PassOptionsToPackage{bcor=#1}{tubstypearea}
}
\DeclareOptionX{style}{%
  \ifthenelse{\equal{#1}{screen}}{%
    \PassOptionsToPackage{bcor=0mm}{tubstypearea}
    \PassOptionsToPackage{rgb}{tubslogo}
    \PassOptionsToPackage{rgb}{tubscolors}
    \PassOptionsToPackage{twoside=false}{tubstypearea}
    \PassOptionsToPackage{twoside=false}{tubsstyle}
  }{%
    \ifthenelse{\equal{#1}{print}}{%
      \PassOptionsToPackage{bcor=15mm}{tubstypearea}
      \PassOptionsToPackage{cmyk}{tubslogo}
      \PassOptionsToPackage{cmyk}{tubscolors}
      \PassOptionsToPackage{twoside=true}{tubstypearea}
      \PassOptionsToPackage{twoside=true}{tubsstyle}
    }{%
      \ifthenelse{\equal{#1}{printdev}}{%
        \PassOptionsToPackage{bcor=15mm}{tubstypearea}
        \PassOptionsToPackage{rgb}{tubslogo}
        \PassOptionsToPackage{rgb}{tubscolors}
        \PassOptionsToPackage{twoside=false}{tubstypearea}
        \PassOptionsToPackage{twoside=false}{tubsstyle}
      }{%
  \ClassError{\tubsClassName}{Unknown Value for option 'style'}{}
      }
    }
  }
}
\def\tubs@opt@paper{}
\newcommand{\@fsfb@prefix}{}
\DeclareOptionX{a6paper}{%
  \def\tubs@opt@paper{a6paper}
}
\DeclareOptionX{langpaper}{%
  \renewcommand{\@fsfb@prefix}{tubslang}
  \PassOptionsToClass{fontsize=9pt}{\BaseClass}
  \def\tubs@opt@paper{langpaper}
}
\DeclareOptionX{a5paper}{%
  \renewcommand{\@fsfb@prefix}{tubsa5}
  \PassOptionsToClass{fontsize=9pt}{\BaseClass}
  \def\tubs@opt@paper{a5paper}
}
\DeclareOptionX{a4paper}{%
  \renewcommand{\@fsfb@prefix}{tubsa4}
  \PassOptionsToClass{fontsize=11pt}{\BaseClass}
  \def\tubs@opt@paper{a4paper}
}
\DeclareOptionX{a3paper}{%
  \renewcommand{\@fsfb@prefix}{tubsa3}
  \PassOptionsToClass{fontsize=13pt}{\BaseClass}
  \def\tubs@opt@paper{a3paper}
}
\DeclareOptionX{a2paper}{%
  \renewcommand{\@fsfb@prefix}{tubsa2}
  \PassOptionsToClass{fontsize=18pt}{\BaseClass}
  \def\tubs@opt@paper{a2paper}
}
\DeclareOptionX{a1paper}{%
  \renewcommand{\@fsfb@prefix}{tubsa1}
  \PassOptionsToClass{fontsize=25pt}{\BaseClass}
  \def\tubs@opt@paper{a1paper}
}
\DeclareOptionX{a0paper}{%
  \renewcommand{\@fsfb@prefix}{tubsa0}
  \PassOptionsToClass{fontsize=40pt}{\BaseClass}
  \def\tubs@opt@paper{a0paper}
}
\DeclareOptionX{backend}{%
  \if#1{flow}
    \def\tubs@opt@backend{flowfram}
  \fi
  \ifx#1{pgf}
    \def\tubs@opt@backend{pgf}
  \fi
  \ifthenelse{\equal{#1}{base}}{%
    \def\tubs@opt@backend{base}
  }{}
  \ifthenelse{\equal{#1}{flow}}{%
    \def\tubs@opt@backend{flowfram}
  }{}
  \ifthenelse{\equal{#1}{pgf}}{%
    \def\tubs@opt@backend{pgf}
  }{}
}
\DeclareOptionX{sender}{%
  \PassOptionsToPackage{sender=#1}{tubstypearea}
}
\DeclareOptionX{hyperref}{%
  \PassOptionsToPackage{%
    colorlinks,
    linkcolor=tuRed,
    anchorcolor=tuBlack,
    citecolor=tuGreenDark80,
    filecolor=tuBlue80,
    menucolor=tuRed,
    urlcolor=tuVioletLight
  }{hyperref}
}
\DeclareOptionX{hyperrefdark}{%
  \PassOptionsToPackage{%
    colorlinks,
    linkcolor=tuRed100,
    anchorcolor=tuBlack,
    citecolor=tuGreenDark,
    filecolor=tuBlueDark,
    menucolor=tuRed100,
    urlcolor=tuViolet
  }{hyperref}
}
\DeclareOptionX*{%
  \PassOptionsToClass{\CurrentOption}{\BaseClass}
}
\newcommand\tubs@fontsize{11pt}
\DeclareOptionX{fontsize}{%
  \renewcommand\tubs@fontsize{#1}
}
\newcommand\headingscolor{tuBlack}
\newcommand\tubs@fontcolor[1]{}
\DeclareOptionX{colorheadings}[tuSecondary]{%
  \renewcommand\headingscolor{#1}
  \renewcommand\tubs@fontcolor[1]{\color{#1}}
}
\newif\if@tubs@tf@smallchap\@tubs@tf@smallchapfalse
\DeclareOptionX{smallchapters}{%
  \@tubs@tf@smallchaptrue
}

\newif\iftubs@bottomsender\tubs@bottomsenderfalse
\define@choicekey{\tubsClassName.cls}{sender}[\val\nr]{top,bottom}{%
  \ifcase\nr\relax
    \tubs@bottomsenderfalse
  \or
    \tubs@bottomsendertrue
  \fi
}
\def\style@select{plain}
\DeclareOptionX{backstyle}{%
  \def\style@select{#1}
}
\ExecuteOptionsX{a4paper,style=print,backend=base}
\ProcessOptionsX*\relax
\providecommand{\@fontsizefilebase}{}
\renewcommand{\@fontsizefilebase}{\@fsfb@prefix\@fsfbs@sub}
\PassOptionsToClass{DIV=1}{\BaseClass}
\LoadClass{\BaseClass}
\RequirePackage{tubscolors}
\RequirePackage{tubstypearea}
\RequirePackage{tubslogo}
\RequirePackage{tubsstyle}
\RequirePackage{nexus}
\RequirePackage{xcolor}
\colorlet{tubsheadings}{\headingscolor}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\newtubsfont[3][\relax]{%
  \@ifundefined{scr@fnt@#2}{%
    \newkomafont[#1]{#2}{#3}%
  }{%
    \setkomafont{#2}{#3}%
  }%
}
\newcommand*\addtotubsfont[2]{%
  \@ifundefined{scr@fnt@#1}{}{%
    \addtokomafont{#1}{#2}%
  }%
}
\let\settubsfont\newtubsfont
\let\usetubsfont\usekomafont
\newtubsfont{intro}{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtubsfont{absheadline}{\sffamily\bfseries}
\newtubsfont{title}{\usekomafont{absheadline}\Huge}
\newtubsfont{headline}{\usekomafont{title}\tubs@fontcolor{tubsheadings}}
\newtubsfont{headlinesmall}{\usekomafont{absheadline}\huge\tubs@fontcolor{tubsheadings}}
\newtubsfont{subtitle}{\usekomafont{absheadline}\Large}
\newtubsfont{subheadline}{\usekomafont{subtitle}\tubs@fontcolor{tubsheadings}}
\newtubsfont{subheadlinesmall}{\usekomafont{absheadline}\large\tubs@fontcolor{
tubsheadings}}
\newtubsfont{author}{\sffamily\LARGE}
\newtubsfont{date}{\large}
\newtubsfont{institute}{\sffamily\large\bfseries}
\newtubsfont{infotext}{\large}
\newtubsfont{infotextitem}{\large}
\newtubsfont{copytext}{\normalsize}
\newtubsfont{caption}{\small}
\settubsfont{pageheadfoot}{\normalfont\mdseries\scshape}
\settubsfont{pagenumber}{\usekomafont{pagehead}\lnum}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\deffootnotemark{\lnum\textsuperscript{\thefootnotemark}}
\addtotubsfont{footnote}{\lnum}% TODO (see above)
\preto\labelenumi{\lnum}
\preto\labelenumii{\lnum}
\preto\labelenumiii{\lnum}
\providecommand*{\partformat}{\partname~\lnum\thepart\autodot}
\ifthenelse{\isundefined{\RedeclareSectionCommand}}{%
}{%
  \RedeclareSectionCommand[beforeskip=0pt, afterskip=30pt]{chapter}
}
\providecommand*{\chapterformat}{}%
\renewcommand*{\chapterformat}{%
  \mbox{\chapappifchapterprefix{\nobreakspace}\lnum\thechapter\autodot\enskip}%
}
\providecommand*\chaptermarkformat{}%
\renewcommand*\chaptermarkformat{\chapappifchapterprefix{\ }%
  \protect\lnum\thechapter\autodot\enskip}
\providecommand*\@seccntformat[1]{}%
\providecommand*{\othersectionlevelsformat}[3]{#3\enskip} % HERE!
\renewcommand*\@seccntformat[1]{%
   \protect\othersectionlevelsformat{#1}{%
     \expandafter\aftergroup\noexpand\@gobble}{\protect\lnum\csname the#1\endcsname}%
}
\providecommand*\sectionmarkformat{}%
\renewcommand*\sectionmarkformat{{\protect\lnum\thesection\autodot\enskip}}%
\providecommand*\figureformat{}%
\renewcommand*{\figureformat}{%
  \figurename~\lnum\thefigure%
  \autodot%
}
\providecommand*\tableformat{}%
\renewcommand*{\tableformat}{%
  \tablename~\lnum\thetable%
  \autodot%
}
\providecommand*\numberline@prefix{}%
\renewcommand*{\numberline@prefix}{\lnum}%
\AfterPackage{listings}{%
  \AtBeginDocument{%
    \def\fnum@lstlisting{%
    \lstlistingname
    \ifx\lst@@caption\@empty\else~\lnum\thelstlisting\fi}%
  }%
  \let\@orig@lst@numberstyle\lst@numberstyle
  \lst@AddToHook{Init}{%
    \l@addto@macro\lst@numberstyle\lnum
  }%
}%
\preto\@tabular{\lnum}
\preto\LT@array{\lnum}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtubsfont{chapter}{\usekomafont{headlinesmall}}
\if@tubs@tf@smallchap
\addtokomafont{chapter}{\LARGE}
\fi
\newtubsfont{section}{\usekomafont{subheadline}}
\newtubsfont{subsection}{\usekomafont{subheadlinesmall}}
\addtotubsfont{subsubsection}{\tubs@fontcolor{tubsheadings}}
\newtubsfont{intro}{\large\tubs@fontcolor{tubsheadings}}%TODO: mdseries???
\renewcommand{\labelitemi}{\rule[0.1em]{0.4em}{0.4em}}
\renewcommand{\labelitemii}{\rule[0.1em]{0.3em}{0.3em}}
\newcommand\@sec@cmd[2]{{\raggedsection\usekomafont{#1}#2\par}}
\define@boolkey{sec@cmd}{small}[true]{}%
\let\headline\@undefined
\newcommand\headline[2][]{%
  \setkeys{sec@cmd}{small=false,#1}%
  \ifKV@sec@cmd@small
    \@sec@cmd{headlinesmall}{#2}%
  \else
    \@sec@cmd{headline}{#2}%
  \fi
}
\let\subheadline\@undefined
\newcommand\subheadline[2][]{%
  \setkeys{sec@cmd}{small=false,#1}%
  \ifKV@sec@cmd@small
    \@sec@cmd{subheadlinesmall}{#2}%
  \else
    \@sec@cmd{subheadline}{#2}%
  \fi
}
\PassOptionsToPackage{olines}{scrlayer-scrpage}
\RequirePackage{scrlayer-scrpage}
\AtBeginDocument{\pagestyle{scrheadings}}
\newcommand\headsepline{\rule{25pt}{1pt}}
\providecommand*{\Ifthispageodd}{\ifthispageodd}%
\newcommand{\innerhead}[2][]{%
  % Benutze optionale Einstellung für linke Seite, falls vorhanden
  \def\@tubs@linnerh{#2}%
  \ifx#1\relax%
    \let\@tubs@rinnerh\@tubs@linnerh%
  \else%
    \def\@tubs@rinnerh{#1}%
  \fi%
  %
  \ifthenelse{\equal{#2}{}}{%
    \let\@iheadsepline\relax%
  }{%
    \let\@iheadsepline\headsepline%
  }%
  \iftubs@bottomsender\else%
    \newdimen\@tubs@headheight%
    \setlength\@tubs@headheight{\headheight}%
    \addtolength\@tubs@headheight{-2pt}%
    % Set left inner head
    \lohead{%
      \vtop to\@tubs@headheight{%
        \boxmaxdepth=0pt%
        \strut{\vbox to 4ex{}}%
        \@tubs@linnerh%
        \vfil%
      }%
    }%
    % Set right inner head
    \rehead{%
      \vtop to\@tubs@headheight{%
        \boxmaxdepth=0pt%
        \strut{\vbox to 4ex{}}%
        \@tubs@rinnerh%
        \vfil%
      }%
    }
  \fi%
}
\newcommand{\innerfoot}[2][]{%
  % Benutze optionale Einstellung für linke Seite, falls vorhanden
  \def\@tubs@linnerf{#2}%
  \ifx#1\relax%
    \let\@tubs@rinnerf\@tubs@linnerf%
  \else%
    \def\@tubs@rinnerf{#1}%
  \fi%
  %
  \ifthenelse{\equal{#2}{}}{%
    \let\@iheadsepline\relax%
  }{%
    \let\@iheadsepline\headsepline%
  }%
  \iftubs@bottomsender%
    % Set left inner foot
    \lofoot{%
      \raisebox{\tubspage@headheight+\depth}{%
        \vbox to\tubspage@headheight{%
          \vfill\vspace*{1ex}\strut%
          \@tubs@linnerf
          \vspace*{-1.5ex}\linebreak%
          \@iheadsepline\vspace*{1ex}%
        }%
      }%
    }%
    % Set right inner foot
    \refoot{%
      \raisebox{\tubspage@headheight+\depth}{%
        \vbox to\tubspage@headheight{%
          \vfill\vspace*{1ex}\strut%
          \@tubs@rinnerf
          \vspace*{-1.5ex}\linebreak%
          \@iheadsepline\vspace*{1ex}%
        }%
      }%
    }%
  \else\fi%
}
\newcommand{\innersender}[2][]{%
  \iftubs@bottomsender%
    \innerfoot[#1]{#2}%
  \else%
    \innerhead[#1]{#2}%
  \fi%
}
\newcommand{\outerhead}[2][\relax]{%
  % Benutze optionale Einstellung für linke Seite, falls vorhanden
  \def\@tubs@routerh{#2}%
  \ifx#1\relax%
    \let\@tubs@louterh\@tubs@routerh%
  \else%
    \def\@tubs@louterh{#1}%
  \fi%
  %
  \ifthenelse{\equal{#2}{}}{%
    \let\@oheadsepline\relax%
  }{%
    \let\@oheadsepline\headsepline%
  }%
  \iftubs@bottomsender\else%
    \newdimen\@tubs@headheight%
    \setlength\@tubs@headheight{\headheight}%
    \addtolength\@tubs@headheight{-\sls@headabove@linethickness}
    \addtolength\@tubs@headheight{-1pt}
    % Set left outer head
    \lehead{%
      \vtop to\@tubs@headheight{%
        \boxmaxdepth=0pt%
        \strut{\vbox to 4ex{}}%
        \@tubs@louterh
        \vfil%
      }%
    }
    % Set right outer head
    \rohead{%
      \vtop to\@tubs@headheight{%
        \boxmaxdepth=0pt%
        \strut{\vbox to 4ex{}}%
        \@tubs@routerh
        \vfil%
      }%
    }
  \fi%
}%
\newcommand{\outerfoot}[2][]{%
  % Benutze optionale Einstellung für linke Seite, falls vorhanden
  \def\@tubs@routerf{#2}%
  \ifx#1\relax%
    \let\@tubs@louterf\@tubs@routerf%
  \else%
    \def\@tubs@louterf{#1}%
  \fi%
  %
  \ifthenelse{\equal{#2}{}}{%
    \let\@oheadsepline\relax%
  }{%
    \let\@oheadsepline\headsepline%
  }%
  \iftubs@bottomsender%
  % Set left outer foot
  \lefoot{%
    \raisebox{\tubspage@headheight+\depth}{%
      \vbox to\tubspage@headheight{%
        \vfill\vspace*{\baselineskip}\strut%
        \@tubs@louterf
        \vspace*{-1.5ex}\linebreak%
        \@oheadsepline\vspace*{1ex}%
      }%
    }%
  }%
  % Set right outer foot
  \rofoot{%
    \raisebox{\tubspage@headheight+\depth}{%
      \vbox to\tubspage@headheight{%
        \vfill\vspace*{\baselineskip}\strut%
        \@tubs@routerf
        \vspace*{-1.5ex}\linebreak%
        \@oheadsepline\vspace*{1ex}%
      }%
    }%
  }%
  \else\fi%
}
\newcommand{\outersender}[2][]{%
  \iftubs@bottomsender%
    \outerfoot[#1]{#2}%
  \else%
    \outerhead[#1]{#2}%
  \fi%
}
\clearscrheadings
\clearscrplain
\setheadwidth[-1in-\hoffset-\oddsidemargin+\tubspage@bcor+2\tubsborderwidth]{\paperwidth-4\tubsborderwidth-\tubspage@bcor}
\iftubs@bottomsender\else%
  \ifthenelse{\isundefined{\KOMAoptions}}{%
    \setheadtopline[\tubsborderwidth]{1pt}[]
  }{%
    \KOMAoptions{headtopline=1pt:\tubsborderwidth}
  }
\fi%
\automark[chapter]{section}
\innersender[\leftmark]{}
\outersender[\pagemark]{\rightmark\qquad\pagemark}
\newcommand{\cleartubsheadings}{%
  \innersender{}\innerfoot{}\outerhead{}\outerfoot{}%
}
\newpagestyle{@tubsheadings}
{%
  {%
    \rlap{\parbox{\@headwidth}{\raggedright
        \strut\tubsheadings@even@left@head\strut}}%
    \hfill
    \llap{\parbox{\@headwidth}{\raggedleft%
        \strut\tubsheadings@even@right@head\strut}}}%
  {%
    \rlap{\parbox{\@headwidth}{\raggedright
        \strut\tubsheadings@odd@left@head\strut}}%
    \hfill
    \llap{\parbox{\@headwidth}{\raggedleft%
        \strut\tubsheadings@odd@right@head\strut}}}%
  {%
    \rlap{\parbox{\@headwidth}{\raggedright
        \strut\tubsheadings@odd@left@head\strut}}%
    \hfill
    \llap{\parbox{\@headwidth}{\raggedleft
        \strut\tubsheadings@odd@right@head\strut}}}}%
{%
  {%
    \rlap{\parbox{\@footwidth}{\raggedright
        \strut\tubsheadings@even@left@foot\strut}}%
    \hfill
    \parbox{\@footwidth}{\centering
      \strut\tubsheadings@even@middle@foot\strut}%
    \hfill
    \llap{\parbox{\@footwidth}{\raggedleft
        \strut\tubsheadings@even@right@foot\strut}}}%
  {%
    \rlap{\parbox{\@footwidth}{\raggedright
        \strut\tubsheadings@odd@left@foot\strut}}%
    \hfill
    \parbox{\@footwidth}{\centering
      \strut\tubsheadings@odd@middle@foot\strut}%
    \hfill
    \llap{\parbox{\@footwidth}{\raggedleft
        \strut\tubsheadings@odd@right@foot\strut}}}%
  {%
    \rlap{\parbox{\@footwidth}{\raggedright
        \strut\tubsheadings@odd@left@foot\strut}}%
    \hfill
    \parbox{\@footwidth}{\centering
      \strut\tubsheadings@odd@middle@foot\strut}%
    \hfill
    \llap{\parbox{\@footwidth}{\raggedleft
        \strut\tubsheadings@odd@right@foot\strut}}%
  }%
}
\RequirePackage{xkeyval}
\RequirePackage{tubsstyle}
\RequirePackage{tubsbox}
\RequirePackage{tubscolors}
\RequirePackage{letltxmacro}
\providecommand{\if@tubs@oddpage}[2]{%
  \ifthenelse{\boolean{tubsstyle@twoside}}{%
    \Ifthispageodd{#1}{#2}%
  }{#1}%
}
\newcommand*{\titlestyle}[1]{%
  \csname tubs@style@bg@#1\endcsname
}
\newcommand*{\setdefaulttitlestyle}[1]{%
  \presetkeys{tubs@tp@titlestyle}{#1}{}%
}
\newcommand{\def@title@style}[3]{%
  \expandafter\def\csname tubs@style@bg@#1\endcsname{#2}
  \expandafter\def\csname tubs@style@content@#1\endcsname{%
    \cleardoublepage%
    #3}
}
\newcommand{\new@back@style}[3]{%
  \expandafter\def\csname tubs@backstyle@bg@#1\endcsname{#2}
  \expandafter\def\csname tubs@backstyle@content@#1\endcsname{%
      \clearpage%
      \if@twoside%
        \Ifthispageodd{\thispagestyle{empty}\strut\clearpage}{}%
      \else\fi%
    #3}%
}
\def\tubs@titlestyle@content{\tubs@style@content@plain}%
\def\tubs@titlestyle@bg{\tubs@style@bg@plain}%
\newcommand\newtitlestyle[3]{%
  \define@key{tubs@tp@titlestyle}{#1}[]{%
    \typeout{Selected title style '#1'}
    \expandafter\global\expandafter\let\expandafter\tubs@titlestyle@content\csname tubs@style@content@#1\endcsname%
    \expandafter\global\expandafter\let\expandafter\tubs@titlestyle@bg\csname tubs@style@bg@#1\endcsname%
  }%
  \def@title@style{#1}{#2}{#3}%
}%
\define@key{tubs@tp}{logo}{%
  %\savekeys{tubs@tp@logoopts}{#1}%
  \setkeys{tubslogo}{#1}%
}
\define@choicekey*{tubs@tp}{title}[\val\nr]{normal,small}{%
  \ifcase\nr\relax
    \setkomafont{title}{\usekomafont{headline}}
  \or
    \setkomafont{title}{\usekomafont{headlinesmall}}
  \fi
}
\define@boolkey{tubs@tp}{notubslogo}[true]{}
\@ifpackageloaded{doc}{%
  \let\origmaketitle\maketitle
}{%
  \LetLtxMacro\origmaketitle\maketitle
}
\renewcommand*{\maketitle}[1][]{%
  \begingroup
  \setkeys*{tubs@tp}{logo=left,#1}%
  % Try to select title style form remaining keys
  \setrmkeys*{tubs@tp@titlestyle}
  \ifthenelse{\equal{\XKV@rm}{}}{}{%
    \PackageWarning{tubstitlepage}{Unknown option '\XKV@rm' in \maketitle.
      Perhaps you misspelled it?}%
  }%
  % Set resulting title style
  \tubs@titlestyle@content
  \tubs@titlestyle@bg
  \endgroup
}
\newcommand{\makebackpage}[1][\style@select]{%
  \begingroup
  \setkeys*{tubs@tp}{logo=plain,#1}%
  \ifthenelse{\equal{\XKV@rm}{}}{%
    \csname tubs@backstyle@content@\style@select\endcsname%
    \csname tubs@backstyle@bg@\style@select\endcsname%
  }{%
    \csname tubs@backstyle@content@\XKV@rm\endcsname%
    \csname tubs@backstyle@bg@\XKV@rm\endcsname%
  }
  \endgroup
}
\let\titlerow\segment
\let\endtitlerow\endsegment
\renewenvironment{titlepage}{%
  \gausspage%
  \setkeys{tubslogo}{}%
  \thispagestyle{empty}%
}{%
  \endgausspage%
}
\newenvironment{backpage}{%
  \gausspage%
  \setkeys{tubslogo}{plain}%
  \thispagestyle{empty}%
}{%
  \endgausspage
}
\newcommand{\tubs@tp@logo}{}
\newcommand{\tubs@tp@titlepicture}{}
\newcommand{\tubs@tp@titleabstract}{}
\newcommand{\tubs@tp@address}{}
\newcommand{\tubs@tp@backinfo}{}
\newcommand{\logo}[1]{%
  \renewcommand{\tubs@tp@logo}{#1}
}
\newcommand{\address}[1]{%
  \renewcommand{\tubs@tp@address}{#1}
}
\newcommand{\backpageinfo}[1]{%
  \renewcommand{\tubs@tp@backinfo}{#1}
}
\newcommand{\titlepicture}[2][cropped]{%
  \renewcommand{\tubs@tp@titlepicture}{[bgimage=#2,imagefit=#1]}
}
\let\titlegraphic\titlepicture
\newcommand{\titleabstract}[1]{%
  \renewcommand{\tubs@tp@titleabstract}{#1}
}
\newif\iftubs@tp@plainbacklogo% TODO: Implementierung fehlt noch (maketitle-Option?)
\tubs@tp@plainbacklogofalse
\newtitlestyle{plain}{}{%
  {%
    % Setze background-Layout
    \bglayout[pages=single]{%
      \ifKV@tubs@tp@notubslogo\else
        \showtubslogo
      \fi
      \showtopline
      \showlogo{\tubs@tp@logo}%
    }%
    \def\tmp@showtubslogo{%
      \ifKV@tubs@tp@notubslogo\else
        \showtubslogo
      \fi
    }%
    \let\tmp@showtopline\showtopline
    \def\tmp@showlogo{\showlogo{\tubs@tp@logo}}%
    \l@addto@macro\titlepage{%
      \tmp@showtubslogo
      \tmp@showtopline
      \tmp@showlogo
    }%
    % Kompatibilität mit KOMA-twoside-Unterstützung für titlepage
    \@twosidefalse% Prevents from generating automatic backpage
    % Makros sichern (werden bei KOMAs \maketitle ueberschrieben!)
    \let\save@uppertitleback\@uppertitleback
    \let\save@lowertitleback\@lowertitleback
    \begingroup
    \let\@oldtitlehead\@titlehead
    \def\@titlehead{\vspace*{2\tubsborderwidth}\@oldtitlehead}
    \origmaketitle
    \endgroup
    \global\let\@uppertitleback\save@uppertitleback
    \global\let\@lowertitleback\save@lowertitleback
  }%
}
\newtitlestyle{image}{}{%
\renewcommand*\and{%
\end{tabular}%
\hskip 1em \relax
\begin{tabular}[t]{@{}l}%
}%
  \begin{titlepage}
    \showtubslogo
    \showlogo{\tubs@tp@logo}
    \expandafter\titlerow\tubs@tp@titlepicture{3}
    \endtitlerow
    \begin{titlerow}[bgcolor=tuSecondary80]{2}
      \sffamily\raggedright%
      {\usekomafont{title}\@title\par}\bigskip%
      \vfill%
      {\usekomafont{subtitle}\@subtitle}%
      \vfill\vfill%
    \end{titlerow}
    \begin{titlerow}[bgcolor=tuSecondary60]{3}
{\usekomafont{author}\raggedright%
\begin{tabular}[t]{@{}l}%
\@author%
      \end{tabular}%
      }%
      \vfill
      {\noindent\usekomafont{date}\@date}%
    \end{titlerow}
  \end{titlepage}
}
\newtitlestyle{imagetext}{}{%
\renewcommand*\and{%
\end{tabular}%
\hskip 1em \relax
\begin{tabular}[t]{@{}l}%
}%
  \begin{titlepage}
    \showtubslogo
    \showlogo{\tubs@tp@logo}
    \expandafter\titlerow\tubs@tp@titlepicture{2}
    \endtitlerow
    \begin{titlerow}[bgcolor=tuSecondary80]{2}
      \sffamily\raggedright%
      {\usekomafont{title}\@title\par}\bigskip%
      \vfill%
      {\usekomafont{subtitle}\@subtitle}%
      \vfill\vfill%
      {\usekomafont{date}\@date}
    \end{titlerow}
    \begin{titlerow}[bgcolor=tuSecondary60]{1}
      \vfill%
{\usekomafont{author}\raggedright%
\begin{tabular}[t]{@{}l}%
\@author%
      \end{tabular}%
      }%
      \vfill
    \end{titlerow}
    \begin{titlerow}[bgcolor=tuSecondary40]{3}
      \tubs@tp@titleabstract
    \end{titlerow}
  \end{titlepage}
}
\newtitlestyle{landscape}{}{%
  \renewcommand*\and{%
    \end{tabular}%
    \hskip 1em \relax
    \begin{tabular}[t]{@{}l}%
  }%
  \begin{titlepage}
    \showtubslogo
    \showlogo{\tubs@tp@logo}
    \expandafter\titlerow\tubs@tp@titlepicture{2}
    \endtitlerow
    \begin{titlerow}[bgcolor=tuSecondary80]{3}
      \sffamily\raggedright%
      {\usekomafont{title}\@title\par}\bigskip%
      \vfill%
      {\usekomafont{subtitle}\@subtitle}%
      \vfill\vfill%
      {\usekomafont{author}\raggedright%
      \begin{tabular}[t]{@{}l}%
        \@author%
      \end{tabular}%
      }%
      \vfill
      {\noindent\usekomafont{date}\@date}%
    \end{titlerow}
    \begin{titlerow}[bgcolor=tuRed]{1}
    \end{titlerow}
  \end{titlepage}
}
\new@back@style{plain}{}{%
  \begin{gausspage}
    \ifKV@tubs@tp@notubslogo\else
      \showtopline
      \showtubslogo
    \fi
    \begin{segment}{8}%
      \noindent\tubs@tp@address\par
      \noindent\begin{minipage}[t]{\textwidth}%
        \@uppertitleback
      \end{minipage}\par
      \vfill
      \noindent\begin{minipage}[b]{\textwidth}%
        \noindent\@lowertitleback
      \end{minipage}%
    \end{segment}
  \end{gausspage}
}
\new@back@style{addressinfo}{}{%
  \begin{gausspage}
    \ifKV@tubs@tp@notubslogo\else
      \showtubslogo
    \fi
    \begin{segment}[bgcolor=tuSecondary]{2}
      \leavevmode\color{white}\tubs@tp@address
    \end{segment}
    \begin{segment}[bgcolor=tuSecondaryLight]{6}
      \noindent\@uppertitleback\par
      \noindent\tubs@tp@backinfo
      \vfill
      \noindent\@lowertitleback
    \end{segment}
  \end{gausspage}
}
\new@back@style{info}{}{%
  \begin{gausspage}
    \ifKV@tubs@tp@notubslogo\else
      \showtubslogo
    \fi
    \begin{segment}[bgcolor=tuSecondaryLight]{8}
      \noindent\@uppertitleback\par
      \noindent\tubs@tp@backinfo
      \vfill
      \noindent\@lowertitleback
    \end{segment}
  \end{gausspage}
}
\new@back@style{trisec}{}{%
  \begin{gausspage}
    \ifKV@tubs@tp@notubslogo\else
      \showtubslogo
    \fi
    \begin{segment}[bgcolor=tuSecondaryLight]{2}
      \usekomafont{copytext}\noindent\tubs@tp@address
    \end{segment}
    \begin{segment}[bgcolor=tuSecondaryDark]{3}
      ~
    \end{segment}
    \begin{segment}[bgcolor=tuSecondary]{3}
      ~
    \end{segment}
  \end{gausspage}
}
\endinput
%%
%% End of file `tubsreprt.cls'.