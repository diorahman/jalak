VALAFLAGS=--pkg jalak \
	  --pkg gmodule-2.0 \
	  --vapidir $(top_srcdir)/vapi

AM_CPPFLAGS = -I$(top_srcdir)/include
LIBADD = $(JALAK_LIBS)
CFLAGS += $(JALAK_CFLAGS)
LDFLAGS += -module -avoid-version -shared
EXTRA_DIST = $(plugin_DATA)
