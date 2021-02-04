PROJECT_NAME = team-4

BUILD = build

SRC = main1.c\
src/Aiswariya.c\
src/alen.c\
src/anu.c\
src/anurag.c\
src/keerthi.c\
src/midhun.c\
src/rehana.c\
src/saianu.c\
src/sanjana.c\
src/vinay.c\

INC	= -Iinc

PROJECT_OUTPUT = $(BUILD)/$(PROJECT_NAME).out

DOCUMENTATION_OUTPUT = documentation/html

$(PROJECT_NAME):all

.PHONY: run clean test  doc all

all: $(SRC) $(BUILD)
	gcc $(SRC) $(INC) -o $(PROJECT_OUTPUT).out
  
run:$(PROJECT_NAME)
	./$(PROJECT_OUTPUT)
	
doc:
	make -C ./documentation


test:$(BUILD)
	gcc $(TEST_SRC) $(INC) -o $(TEST_OUTPUT) -lcunit
	./$(TEST_OUTPUT)
  
  
clean:
	rm -rf $(BUILD) $(DOCUMENTATION_OUTPUT)
  
  
 $(BUILD):
	mkdir build