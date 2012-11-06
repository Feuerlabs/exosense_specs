.PHONY: all doc

all:
	rebar get-deps compile

doc:
	REBAR_DOC=1 rebar skip_deps=true get-deps doc