#!/usr/bin/env bash

# Time-stamp: <2011-10-30 11:28:36 Sunday by lian>

# @version 1.0
# @author lian

texdoc=$1
pdfdoc=$2
texdoc_name=${texdoc%.*}

if [ "$pdfdoc" -eq "" ]
then
    pdfdoc=${texdoc_name}-convert-to-pdf-from-tikz
fi


pdflatex -jobname=${pdfdoc} -output-format=pdf
\documentclass[11pt]{article}

\usepackage{times,fullpage,graphicx,amsmath,amssymb,namedplus,subfigure, multirow}
\usepackage[pdfborder={0 0 0}]{hyperref}

\title{title}
\author{Weidong LIAN}

\begin{document}
\maketitle


\bibliographystyle{plannat}
\bibliography{reference.bib}

\input{"${texdoc}"}
\end{document}
