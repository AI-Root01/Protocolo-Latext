%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Federico del RAZO LÓPEZ
% TecNM / Instituto Tecnológico de TOLUCA / DEPI
% 22-Oct-2022
% Adaptado de : 	Ildeberto de los Santos Ruiz
% 					Instituto Tecnológico de Tuxtla Gutiérrez, 2018
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Identification
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ITTol-Protocolo}[2022/10/22]


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Preliminary declarations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\PassOptionsToPackage{T1}{fontenc}
\PassOptionsToPackage{utf8}{inputenc}
\PassOptionsToPackage{spanish,mexico,es-noindentfirst}{babel}
\PassOptionsToPackage{letterpaper,top=3.0cm, bottom=3.0cm, left=3.0cm, right=2.5cm}{geometry}
\PassOptionsToPackage{small,bf}{caption}
\PassOptionsToPackage{colorlinks=true, linkcolor=black, filecolor=magenta,  urlcolor=cyan, citecolor=blue,
     						  pdftitle={Overleaf Example}, pdfpagemode=FullScreen} {hyperref}
\PassOptionsToPackage{table,xcdraw}{xcolor}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[oneside,openany, letterpaper]{book}						% Tamaño carta

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fontenc}
\RequirePackage{inputenc}
\RequirePackage{microtype}
\RequirePackage{fourier}
\RequirePackage{babel}
\RequirePackage{geometry}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathrsfs}
\RequirePackage{pifont}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{siunitx}
\RequirePackage{fancyvrb}
\RequirePackage{fancyhdr}						% Encabezados y pies de página
\RequirePackage{hyperref}
%\RequirePackage{apacite}					% Solo si utiliza un estilo APA
\RequirePackage{multirow}
\RequirePackage{titling}
\RequirePackage{booktabs}
\RequirePackage{epigraph}
\RequirePackage{emptypage}
\RequirePackage{setspace}					% Para interlineado
\RequirePackage[T1]{fontenc}
\RequirePackage{fontspec}						% COMPILAR CON LuaLatex
\setmainfont{montserrat}						% Montserrat font
%\setmainfont{Times New Roman}				% Time New Roman font
%\RequirePackage[scaled]{helvet}				% Fuente Helvética

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Opcionales si incluye 
\RequirePackage{algorithm2e}					% Algoritmos
\RequirePackage{amsthm}						% Teoremas
\RequirePackage{listings}			       		% Listado de Código Fuente (C/C++, Python, PHP)

\DisableLigatures[f]{encoding=*,family=*}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% More declarations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareGraphicsExtensions{.pdf,.png,.jpg}		% Extensiones de imágenes reconocidas por defecto
\graphicspath{{./figuras/}}						% Directorio donde se buscan las figuras
\spacing{1.5}									% Espaciado en párrafos de 1.5 renglones
\setlength{\parindent}{0cm}						% Se elimina la sangría en de los párrafos al inicio de un capítulo o sección 
\definecolor{ittolBlue}{RGB}{34, 76, 156}		% Azul ITTol
\definecolor{ittolOrange}{RGB}{227, 119, 59}	% Naranja ITTol
\pagestyle{fancy}

\setlength{\parskip}{\medskipamount}
\newcommand{\titulo}[1]{\newcommand{\thetitle}{#1}}
\newcommand{\autor}[1]{\newcommand{\theauthor}{#1}}
\newcommand{\director}[1]{\newcommand{\thedirector}{#1}}
\newcommand{\codirector}[1]{\newcommand{\thecodirector}{#1}\newcommand*{\CODIRECTOR}{}}
\newcommand{\tutor}[1]{\newcommand{\thetutor}{#1}\newcommand*{\TUTOR}{}}
\newcommand{\grado}[1]{\newcommand{\thegrado}{#1}}
\newcommand{\autorizacion}[1]{\newcommand{\theautorizacion}{#1}}
\newcommand{\aprobacion}[1]{\newcommand{\theaprobacion}{#1}}
\newcommand{\noskip}{\setlength{\parskip}{0em}}											% Elimina la sangría en párrafos iniciales
\renewcommand{\chaptermark}[1]{\markboth{ \MakeUppercase{\thechapter.\ #1}}{}}

\fancypagestyle{plain}{%
  \fancyfoot{} % Borra todos los encabezados y pies de página
  \fancyfoot[R]{\thepage} % Encabezado a la derecha
}

\renewcommand{\theequation}{Ecuación \thechapter.\arabic{equation}}

\renewcommand{\maketitle}{																% Portada
	\thispagestyle{empty}\noindent		
  	\begin{titlepage}              												      
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       	% Logos:  SEP +TecNM + ITTol
 		\begin{minipage}{\textwidth}	 													% Logo TecNM
        		%\vspace{-1.2cm}      
        		\includegraphics[width=\textwidth]{logoSEP-TecNM-ITTol}					
    		\end{minipage}    
		
		\begin{minipage}{\textwidth}        													% Líneas horizontales
    			\begin{center}
      				\textcolor{ittolOrange}{\rule{\textwidth}{1pt}\\[-0.6\baselineskip]}					
      				\vspace{-1.5mm}		
      				\textcolor{ittolBlue}{\rule{\textwidth}{2pt}}
    			\end{center}
		\end{minipage} 
		
    		\begin{minipage}{0.07\textwidth}						 							% Líneas verticales
			\vspace{-.5cm}   
      			\textcolor{ittolOrange}{\rule{1pt}{0.9\textheight}}
      			\textcolor{ittolBlue}{\rule{2pt}{0.9\textheight}}
      			\hspace{-0.36cm} 
      			\textcolor{ittolOrange}{\rule{1pt}{0.89\textheight}}
     			\textcolor{ittolBlue}{\rule{2pt}{0.89\textheight}}
    		\end{minipage}
		\begin{minipage}{0.93\textwidth}	
			%\vspace{-13cm}  										
      			\begin{center}
        			\Large\textbf{TECNOLÓGICO NACIONAL DE MÉXICO} \\					% TecNM - ITTol
				\large\textbf{INSTITUTO TECNOLÓGICO DE TOLUCA} \\					% ITTol		
        			\large\textbf{División de Estudios de Posgrado e Investigación}	 \\			% ITTol	
				\bigskip\bigskip													
				\LARGE\textbf{\thetitle}	 \\													% Título
				\bigskip	
				\large Protocolo de investigación que presenta \\[0.5\baselineskip] \Large\textbf{\theauthor}	\\	% Autor
				\bigskip					
				\large Inscrito en el programa de   \\[0.5\baselineskip]
				\Large\textbf{\thegrado}	 \\													% Grado	
				\bigskip\bigskip
				\large Responsable : \textbf{\thedirector}	 								% Director		
        			\ifdefined\CODIRECTOR
	  				\\ Codirector de tesis: \textbf{\thecodirector}  \\				  		% Codirector
%        			\else
%	  				\\
        			\fi			
				\bigskip\bigskip\bigskip
				\normalsize \textbf{Metepec, Estado de México, México \\[0.5\baselineskip] \thedate}
      			\end{center}
 		\end{minipage}
	\end{titlepage}
}


\newenvironment{abstract}																	% Abstract
	{\cleardoublepage\thispagestyle{empty}}
{\vfill\null}


\newcommand{\epigrafe}[2]
	{\vspace{-2\baselineskip}\epigraph{#1}{#2}\vspace{-\baselineskip}}


\normalsize
\endinput
