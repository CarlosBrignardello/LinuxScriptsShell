#!/bin/bash
echo -e "Tu dirección IP es: \c"
echo -e `hostname -I` | cut -d " " -f 1 
