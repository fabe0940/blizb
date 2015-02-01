CC = unicon
OBJ = blizb.u game.u
APPLICATION_NAME = blizb

.PHONY : all rebuild clean

all : $(APPLICATION_NAME)

rebuild :
	make clean
	make all

$(APPLICATION_NAME) : $(OBJ)
	$(CC) $(OBJ) -o  $(APPLICATION_NAME)

blizb.u : blizb.icn
	$(CC) -c blizb.icn

game.u : game.icn
	$(CC) -c game.icn

clean :
	rm -f $(APPLICATION_NAME) $(OBJ) uniclass.*
