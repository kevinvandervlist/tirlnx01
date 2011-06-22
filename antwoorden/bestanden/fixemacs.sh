% tirlnx01 - Materiaal om het keuzevak Linux te geven 
% op de Hogeschool Rotterdam.
% Copyright (C) 2010 - 2011  Paul Sohier, Kevin van der Vlist
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
%
% Kevin van der Vlist - kevin@kevinvandervlist.nl
% Paul Sohier - paul@paulsohier.nl

#!/bin/bash
# Resolve de dependencies van emacs wanneer X niet is geinstalleerd. 

if [[ $UID -ne 0 ]]; then
	echo "Installeren doe je als root!"
	exit 1
fi

WGET=`which wget`
RM=`which rm`
INPKG=`which installpkg`
MIRROR="ftp://ftp.fu-berlin.de/unix/linux/mirrors/slackware/slackware-13.1/"

DEPENDENCIES="fontconfig-2.8.0-i486-1.txz libSM-1.1.1-i486-1.txz libICE-1.0.6-i486-1.txz libXpm-3.5.8-i486-1.txz libX11-1.3.3-i486-1.txz libXrender-0.9.5-i486-1.txz libXft-2.1.14-i486-1.txz libXinerama-1.1-i486-1.txz libXi-1.3-i486-1.txz libXrandr-1.3.0-i486-1.txz libXcursor-1.1.10-i486-1.txz libXau-1.0.5-i486-1.txz libXdmcp-1.0.3-i486-1.txz libXcomposite-0.4.1-i486-1.txz libXext-1.1-i486-1.txz libXdamage-1.1.2-i486-1.txz libXfixes-4.0.4-i486-1.txz pixman-0.16.6-i486-1.txz libxcb-1.6-i486-1.txz"

for package in $DEPENDENCIES; do
	$WGET $MIRROR/slackware/x/$package 
done

$INPKG $DEPENDENCIES
$RM $DEPENDENCIES
