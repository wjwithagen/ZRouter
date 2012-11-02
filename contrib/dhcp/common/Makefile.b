# Makefile.conf
#
# Copyright (c) 1996, 1997, 1998, 1999 The Internet Software Consortium.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 3. Neither the name of The Internet Software Consortium nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE INTERNET SOFTWARE CONSORTIUM AND
# CONTRIBUTORS ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING,
# BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL
# THE INTERNET SOFTWARE CONSORTIUM OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
# OF THE POSSIBILITY OF SUCH DAMAGE.
#

## Defaults...
SCRIPT = none
BINDIR = /usr/sbin
CLIENTBINDIR=/sbin
ADMMANEXT = .0
FFMANEXT = .0
ADMMANDIR = /usr/share/man/cat8
FFMANDIR = /usr/share/man/cat5
INSTALL = install -c
MANINSTALL = install -c -m 444
CHMOD = chmod
CATMANPAGES =
MANCAT = cat
ETC = /etc
VARRUN = /var/run
VARDB = /var/db

## Porting::
#
# For each supported operating system, there is a block of text below
# beginning with #--os-name-- and ending with #--os-name--.   Between
# these delimiters are assignments, commented out, which define the
# Makefile variables required for that operating system.
#
# The configure shell script figures out what operating system it's
# being run on and then runs Makefile.dist through a sed script which
# removes the comment characters from the appropriate set of
# assignments, and writes the output to Makefile.

## AIX 4.1.5.0
##--aix--
#CF = cf/aix.h
#CC=cc -Daix
#INSTALL=/usr/ucb/install
#MANINSTALL=/usr/ucb/install
#ADMMANEXT = .8
#FFMANEXT = .5
#VARRUN = /etc
#VARDB = /etc
##--aix--

## NEXTSTEP 3.x,4.x
##--nextstep--
#LIBS =
#CF = cf/nextstep.h
#CC=cc
#COPTS = -Wall
#BINDIR=/usr/etc
#ADMMANDIR = /usr/local/man/cat8
#FFMANDIR = /usr/local/man/cat5
#ADMMANEXT = .8
#FFMANEXT = .5
#VARRUN = /etc
#VARDB = /etc
##--nextstep--

## SunOS 4.1
##--sunos4--
#LIBS = -lresolv
#CF = cf/sunos4.h
#BINDIR=/usr/etc
#CLIENTBINDIR=/etc
#ADMMANEXT = .8
#FFMANEXT = .5
#VARRUN = /etc
#VARDB = /etc
##--sunos4--

## Solaris 2.5 (with gcc)
##--sunos5-gcc--
#INSTALL=/usr/ucb/install
#MANINSTALL=/usr/ucb/install
#LIBS = -lresolv -lsocket -lnsl -lgen
#CC=gcc
#COPTS = -Wall -Wno-unused -Wno-implicit -Wno-comment \
#	 -Wno-uninitialized -Wno-char-subscripts -Werror
#CF = cf/sunos5-5.h
#ADMMANDIR = /usr/share/man/cat1m
#ADMMANEXT = .1m
#FFMANDIR = /usr/share/man/cat4
#FFMANEXT = .4
#VARRUN = /etc
#VARDB = /etc
#SCRIPT=solaris
##--sunos5-gcc--

## Solaris 2.5 (with Sun cc)
##--sunos5-cc--
#INSTALL=/usr/ucb/install
#MANINSTALL=/usr/ucb/install
#LIBS = -lresolv -lsocket -lnsl -lgen
#CC=cc
#COPTS = -D__svr4__
#CF = cf/sunos5-5.h
#ADMMANDIR = /usr/share/man/cat1m
#ADMMANEXT = .1m
#FFMANDIR = /usr/share/man/cat4
#FFMANEXT = .4
#VARRUN = /etc
#VARDB = /etc
#SCRIPT=solaris
##--sunos5-cc--

## DEC Alpha/OSF1
##--alphaosf--
#INSTALL=/usr/ucb/installbsd
#MANINSTALL=/usr/ucb/installbsd
#LIBS=
#CF = cf/alphaosf.h
#ADMMANEXT = .8
#FFMANEXT = .5
#VARDB = /etc
##--alphaosf--

## BSD/OS 2.1
##--bsdos--
#LIBS= -lresolv
#CC=gcc2
#CF = cf/bsdos.h
##--bsdos--

## FreeBSD
##--freebsd--
#CF = cf/freebsd.h
#SCRIPT=freebsd
##--freebsd--

## Rhapsody
##--rhapsody--
#CF = cf/rhapsody.h
#COPTS  = -Wall -Wno-unused -Wno-implicit -Wno-comment \
#	  -Wno-uninitialized -Werror -pipe
#SCRIPT=rhapsody
##--rhapsody--

## NetBSD
##--netbsd--
#CF = cf/netbsd.h
#COPTS  = -Wall -Wstrict-prototypes -Wno-unused -Wno-implicit -Wno-comment \
#	  -Wno-uninitialized -Werror -pipe
#SCRIPT=netbsd
##--netbsd--

## Ultrix
##--ultrix--
#BINDIR = /usr/etc
#CLIENTBINDIR=/etc
#VARRUN = /etc
#VARDB = /etc
#CF = cf/ultrix.h
#ADMMANDIR = /usr/man/man8
#ADMMANEXT = .8
#FFMANDIR = /usr/man/man5
#FFMANEXT = .5
##--ultrix--

## Linux 1.x
##--linux-1--
#COPTS = -DLINUX_MAJOR=1 -DLINUX_MINOR=0
#CF = cf/linux.h
#ADMMANDIR = /usr/man/man8
#ADMMANEXT = .8
#FFMANDIR = /usr/man/man5
#FFMANEXT = .5
#MANCAT = man
#VARRUN = /var/run
#VARDB = /var/state/dhcp	# see rationale in includes/cf/linux.h
#SCRIPT=linux
##--linux-1--

## Linux 2.0
##--linux-2.0--
#COPTS = -DLINUX_MAJOR=2 -DLINUX_MINOR=0
#CF = cf/linux.h
#ADMMANDIR = /usr/man/man8
#ADMMANEXT = .8
#FFMANDIR = /usr/man/man5
#FFMANEXT = .5
#MANCAT = man
#VARRUN = /var/run
#VARDB = /var/state/dhcp	# see rationale in includes/cf/linux.h
#SCRIPT=linux
##--linux-2.0--

## Linux 2.1
##--linux-2.1--
#COPTS = -DLINUX_MAJOR=2 -DLINUX_MINOR=1
#CF = cf/linux.h
#ADMMANDIR = /usr/man/man8
#ADMMANEXT = .8
#FFMANDIR = /usr/share/man/man5
#FFMANEXT = .5
#MANCAT = man
#VARRUN = /var/run
#VARDB = /var/state/dhcp	# see rationale in includes/cf/linux.h
#SCRIPT=linux
##--linux-2.1--

## Linux 2.2
##--linux-2.2--
#COPTS = -DLINUX_MAJOR=2 -DLINUX_MINOR=2
#CF = cf/linux.h
#ADMMANDIR = /usr/man/man8
#ADMMANEXT = .8
#FFMANDIR = /usr/share/man/man5
#FFMANEXT = .5
#MANCAT = man
#VARRUN = /var/run
#VARDB = /var/state/dhcp	# see rationale in includes/cf/linux.h
#SCRIPT=linux
##--linux-2.2--

## SCO
##--sco--
#CF = cf/sco.h
#PREDEFINES=-DSCO -DBROKEN_ANSI
#BINDIR = /usr/etc
#CLIENTBINDIR=/etc
#ADMMANDIR = /usr/man/cat.ADMN
#ADMMANEXT = .ADMN.Z
#FFMANDIR = /usr/man/cat.SFF
#FFMANEXT = .SFF.Z
#INSTALL = cp
#MANFROM = <
#MANINSTALL = compress
#MANTO = >
#VARRUN = /etc
#VARDB = /etc
#CATMANPAGES=
##--sco--

## QNX
##--qnx--
#CF = cf/qnx.h
#ADMMANDIR = /usr/man/man8
#ADMMANEXT = .8
#FFMANDIR = /usr/man/man5
#FFMANEXT = .5
#MANCAT = man
#VARRUN = /etc
#COPTS=-w3 -Dlint
#LFLAGS=$(DEBUG) "-Wl,op symfile" -l socket
#MANINSTALL = /bin/true 
#INSTALL = cp
#BINDIR = /etc
#CLIENTBINDIR = /etc
##--qnx--

## CygWin32
##--cygwin32--
#CF = cf/cygwin32.h
#ADMMANDIR = /usr/man/man8
#ADMMANEXT = .8
#FFMANDIR = /usr/man/man5
#FFMANEXT = .5
#VARRUN = /etc
#MANINSTALL = /bin/true 
#INSTALL = cp
#BINDIR = /etc
#CLIENTBINDIR = /etc
#CC=/usr/local/i386-unknown-cygwin32/bin/gcc
#AR=/usr/local/i386-unknown-cygwin32/bin/ar
#AS=/usr/local/i386-unknown-cygwin32/bin/as
#LD=/usr/local/i386-unknown-cygwin32/bin/ld
#NM=/usr/local/i386-unknown-cygwin32/bin/nm
#RANLIB=/usr/local/i386-unknown-cygwin32/bin/ranlib
#STRIP=/usr/local/i386-unknown-cygwin32/bin/strip
##--cygwin32--

## IRIX 6.x
##--irix--
#LIBS = -lbind
#LFLAGS=$(DEBUG) -L/usr/local/lib -Wl,-woff,84 -Wl,-woff,85 -Wl,-woff,134
#CC=gcc
#COPTS = -I/usr/local/include
#CF = cf/irix.h
#BINDIR = /usr/local/etc
#ADMMANDIR = /usr/local/man/man8
#ADMMANEXT = .8
#FFMANDIR = /usr/local/man/man5
#FFMANEXT = .5
#MANCAT = man
#INSTALL = install
#MANINSTALL = install
#CHMOD = chmod
#ETC = /etc
#VARRUN = /etc
#VARDB = /usr/local/etc/dhcp
##--irix--
# Makefile.dist
#
# Copyright (c) 1996, 1999 The Internet Software Consortium.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 3. Neither the name of The Internet Software Consortium nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE INTERNET SOFTWARE CONSORTIUM AND
# CONTRIBUTORS ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING,
# BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL
# THE INTERNET SOFTWARE CONSORTIUM OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
# OF THE POSSIBILITY OF SUCH DAMAGE.
#

CATMANPAGES = dhcp-options.cat5
SEDMANPAGES = dhcp-options.man5
SRC    = raw.c parse.c nit.c icmp.c dispatch.c conflex.c upf.c bpf.c socket.c \
       	 lpf.c packet.c memory.c print.c options.c inet.c convert.c \
	 tree.c tables.c hash.c alloc.c errwarn.c inet_addr.c dlpi.c \
	 tr.c ethernet.c
OBJ    = raw.o parse.o nit.o icmp.o dispatch.o conflex.o upf.o bpf.o socket.o \
	 lpf.o packet.o memory.o print.o options.o inet.o convert.o \
	 tree.o tables.o hash.o alloc.o errwarn.o inet_addr.o dlpi.o \
	 tr.o ethernet.o
MAN    = dhcp-options.5

DEBUG  = -g
INCLUDES = -I.. -I../includes
CFLAGS = $(DEBUG) $(PREDEFINES) $(INCLUDES) $(COPTS)

all:	libdhcp.a $(CATMANPAGES)

libdhcp.a:	$(OBJ)
	rm -f libdhcp.a
	ar cruv libdhcp.a $(OBJ)
	ranlib libdhcp.a

install: all
	for dir in $(FFMANDIR); do \
	  foo=""; \
	  for bar in `echo $(DESTDIR)$${dir} |tr / ' '`; do \
	    foo=$${foo}/$$bar; \
	    if [ ! -d $$foo ]; then \
	      mkdir $$foo; \
	      chmod 755 $$foo; \
	    fi; \
	  done; \
	done
	$(MANINSTALL) $(MANFROM) dhcp-options.$(MANCAT)5 $(MANTO) \
				$(DESTDIR)$(FFMANDIR)/dhcp-options$(FFMANEXT)


clean:
	-rm -f $(OBJ)
	
realclean: clean
	-rm -f libdhcp.a *~ #* $(CATMANPAGES) $(SEDMANPAGES)

distclean: realclean
	-rm -f Makefile

dhcp-options.cat5:	dhcp-options.man5
	nroff -man dhcp-options.man5 >dhcp-options.cat5

dhcp-options.man5:	dhcp-options.5
	sed -e "s#ETCDIR#$(ETC)#g" -e "s#DBDIR#$(VARDB)#g" \
		-e "s#RUNDIR#$(VARRUN)#g" < dhcp-options.5 >dhcp-options.man5

# Dependencies (semi-automatically-generated)

raw.o: raw.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
parse.o: parse.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h \
 ../includes/dhcp.h ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h ../includes/dhctoken.h
nit.o: nit.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
icmp.o: icmp.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h ../includes/netinet/ip.h \
 ../includes/netinet/ip_icmp.h
dispatch.o: dispatch.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h \
 conflex.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h ../includes/dhctoken.h
upf.o: upf.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
bpf.o: bpf.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h ../includes/netinet/ip.h ../includes/netinet/udp.h \
 ../includes/netinet/if_ether.h
socket.o: socket.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
lpf.o: lpf.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
packet.o: packet.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h ../includes/netinet/ip.h \
 ../includes/netinet/udp.h ../includes/netinet/if_ether.h
memory.o: memory.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
print.o: print.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
options.o: options.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
inet.o: inet.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
convert.o: convert.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
tree.o: tree.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
tables.o: tables.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
hash.o: hash.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
alloc.o: alloc.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
errwarn.o: errwarn.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
inet_addr.o: inet_addr.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
dlpi.o: dlpi.c ../includes/dhcpd.h \
 ../includes/cdefs.h ../includes/osdep.h ../includes/site.h \
 ../includes/cf/netbsd.h ../includes/dhcp.h \
 ../includes/tree.h ../includes/hash.h ../includes/inet.h \
 ../includes/sysconf.h
