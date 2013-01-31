jalakincludedir = $(includedir)
jalakinclude_HEADERS = include/jalak.h

AM_CPPFLAGS = $(JALAK_CFLAGS) \
	      -I$(top_srcdir)/include

VALAFLAGS=--pkg gio-2.0 \
	  --pkg gmodule-2.0 \
	  --pkg libpeas-1.0 \
	  --pkg webkit-1.0 \
	  --pkg config \
	  --pkg javascriptcore \
	  --target-glib=2.32 \
	  --thread \
	  --vapidir $(top_srcdir)/vapi \
	  -H $(top_srcdir)/include/jalak.h \
	  --library=$(top_srcdir)/vapi/jalak \
	  --use-header

bin_PROGRAMS = jalak

jalak_SOURCES = src/main.vala 

jalak_LDADD = $(JALAK_LIBS)

include/jalak.h: jalak_vala.stamp
