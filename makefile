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
	
spell: ass$(FILE).tex
	ispell $<
	
class_update:
	cd ..; \
	git submodule update --init --recursive;
#	cd -;
	cp -r ../UNSW_Latex/artwork artwork;
	cp -r ../UNSW_Latex/unswmaths.cls unswmaths.cls
	
coffee:
	@echo "Go out and buy some."
	
