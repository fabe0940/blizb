CC := /usr/local/bin/unicon
SRC := $(wildcard *.icn)
OBJ := $(patsubst %.icn, %.u, $(SRC))
APPLICATION_NAME := blizb

.PHONY : all clean rebuild

all : $(APPLICATION_NAME)

$(APPLICATION_NAME) : $(OBJ)
	$(CC) $^ -o  $@

bullet.u : entity.u
player.u : entity.u
snowflake.u : entity.u

%.u : %.icn
	$(CC) -c $<

clean :
	\rm -f $(APPLICATION_NAME) $(OBJ) uniclass.*

rebuild :
	make clean
	make all
