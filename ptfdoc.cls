\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ptfdoc}[2017/04/04 Modified Version of book document class]

%Uses \page{5} to indicated page break in the original text via a margin number. 
%\newcommand{\page}[1]{\marginpar{\centering \footnotesize #1}}

% Applies formatting to margin paragraphs.
\let\oldmarginpar\marginpar
\renewcommand{\marginpar}[1]{\oldmarginpar{\centering \footnotesize #1}}
\LoadClass[a5paper,12pt,openany]{book}
% Command to prevent overfull hbox for justified text.
\setlength{\emergencystretch}{3em}

\RequirePackage{titlesec}
% Sets fonts to Palantino
\RequirePackage{palatino}
\RequirePackage[top=1in, bottom=1.5in, outer=1in, inner=1in, heightrounded, marginparwidth=0.3in, marginparsep=0.15in]{geometry}	 

\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage[autostyle, english = american]{csquotes}
\MakeOuterQuote{"}

% Make chapter numbers roman numerals.
\renewcommand{\thechapter}{\Roman{chapter}}

% Reset footnote number each page:
\RequirePackage{perpage} 
\MakePerPage{footnote}


% Manage the format of chapter titles.
\titleformat{\chapter}[display]         % Customise the \section command 
  {\large\bfseries\scshape\center} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {\thechapter\vspace*{1pc}}{0em}           % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  []                 % Inserts a horizontal line after the heading

% Manage subsection headings. Using subsection for the \S centered text. 
\titleformat{\subsection}[display]         % Customise the \section command 
  {\center } % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  []                 % Inserts a horizontal line after the heading

% Ensures paragraph indents after subsection breaks.
\titlespacing{\subsection}{0pt}{*1}{*1}

% Table of Contents

\RequirePackage{titletoc}

% Command to reserve space for page numbers on right hand side of contents page.
\contentsmargin{2pc}

\titlecontents{chapter}
% left margin
[0.0cm]             
% above code e.g. \large, \centering,  
{}                  
% numbered format % \hspace*{2pc}? \contentslabel{2pc}, \thecontentslabel
{\centering \thecontentslabel\\*[.2pc]}
% unnumbered format
{}      
% filler-page-format, e.g dots
{\titlerule*[1pc]{.}\contentspage}         
% below code
[\vspace*{1cm}]

