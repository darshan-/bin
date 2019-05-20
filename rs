#!/bin/bash

case "$1" in
    30)
        redshift -P -O 3000 -b 0.6:0.6
        ;;
    32)
        redshift -P -O 3200 -b 0.7:0.7
        ;;
    35)
        redshift -P -O 3500 -b 0.8:0.8
        ;;
    40)
        redshift -P -O 4000 -b 0.9:0.9
        ;;
    45)
        redshift -P -O 4500 -b 1.0:1.0
        ;;
    50)
        redshift -P -O 5000 -b 1.0:1.0
        ;;
    55)
        redshift -P -O 5500 -b 1.0:1.0
        ;;
    62)
        redshift -P -O 6200 -b 1.0:1.0
        ;;
    *)
        echo unknown value
        ;;
esac

# TODO: Treat XX as XX00, and then set brightness according to best fit
#   (Would be easiest to do in Go?)
