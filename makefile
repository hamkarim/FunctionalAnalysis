COMP = pdflatex
READ = evince
FILE = 2

ass$(FILE).pdf: ass$(FILE).tex unswmaths.cls
	$(COMP) $<
	
read: ass$(FILE).pdf
	$(READ) $<
	
clean:
	rm -f *.aux *.log *~
	
ques: assignment-$(FILE).pdf
	$(READ) $<
	
coffee:
	@echo "Go out and buy some."
	
