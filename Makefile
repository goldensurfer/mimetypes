PROJECT = mimetypes

ERLC_OPTS = +debug_info +warn_export_all +warn_export_vars +warn_shadow_vars +warn_obsolete_guard

PLT_APPS = hipe sasl mnesia crypto compiler syntax_tools
DIALYZER_OPTS = -Werror_handling -Wrace_conditions -Wunmatched_returns | fgrep -v -f ./dialyzer.ignore-warning

my_all: all ebin/mimetypes_disp.beam

include erlang.mk

ebin/mimetypes_disp.beam:
	./post_compile.escript
