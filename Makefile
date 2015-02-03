CC = unicon
OBJ = blizb.u entity.u game.u snowflake.u
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

entity.u : entity.icn
	$(CC) -c entity.icn

game.u : game.icn
	$(CC) -c game.icn

snowflake.u : snowflake.icn
	$(CC) -c snowflake.icn

clean :
	rm -f $(APPLICATION_NAME) $(OBJ) uniclass.*
