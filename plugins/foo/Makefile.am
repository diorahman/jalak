plugin_LTLIBRARIES = libfoo.la

libfoo_la_VALAFLAGS = --pkg gio-2.0 \
	  --pkg webkit-1.0 \
	  --pkg javascriptcore \
	  --pkg json-glib-1.0 \
	  --target-glib=2.32 \
	  --thread \
	  --vapidir $(top_srcdir)/vapi 

libfoo_la_SOURCES = foo.vala

plugin_DATA = foo.plugin

include ../plugins.mk
