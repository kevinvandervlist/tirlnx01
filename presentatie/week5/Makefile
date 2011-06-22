# tirlnx01 - Materiaal om het keuzevak Linux te geven 
# op de Hogeschool Rotterdam.
# Copyright (C) 2010 - 2011  Paul Sohier, Kevin van der Vlist
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# Kevin van der Vlist - kevin@kevinvandervlist.nl
# Paul Sohier - paul@paulsohier.nl

# Vars
FILE=presentatie
WEEK=week5
SCP=scp -i ../../../id_rsa_pdf 
DEST=linux@hosthuis.nl:/var/www/linux/.

MAKE=make
CP=cp
RM=rm
MV=mv

all: build

build:
	@${CP} ../../latex-makefile .
	@${MAKE} -f latex-makefile ${FILE}
	@${MV} ${FILE}.pdf ${FILE}.org.pdf
	@${MAKE} -f latex-makefile clean
	@${MV} ${FILE}.org.pdf ${WEEK}.pdf
	@${RM} latex-makefile

publish: build
	@${SCP} ${WEEK}.pdf ${DEST}
