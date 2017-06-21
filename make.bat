@echo off
@if not exist "_build" mkdir "_build"
@if not exist "pdf" mkdir "pdf"
@if not exist "pdf\doorlock" mkdir "pdf\doorlock"
@if not exist "pdf\protocol-drafts" mkdir "pdf\protocol-drafts"
@if not exist "pdf\protocol" mkdir "pdf\protocol"
cd _build


    for %%f in (..\*.tex) do (
        pdflatex ..\%%~nf.tex
        move %%~nf.pdf ..\pdf
    )

    for %%f in (..\doorlock\*.tex) do (
        pdflatex ..\doorlock\%%~nf.tex
        move %%~nf.pdf ..\pdf\doorlock
    )

    for %%f in (..\protocol-drafts\*.tex) do (
        pdflatex ..\protocol-drafts\%%~nf.tex
        move %%~nf.pdf ..\pdf\protocol-drafts
    )

    for %%f in (..\protocol\*.tex) do (
        pdflatex ..\protocol\%%~nf.tex
        move %%~nf.pdf ..\pdf\protocol
    )

cd ..
pause