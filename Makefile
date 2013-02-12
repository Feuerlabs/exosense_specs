.PHONY: doc all

all:
	rebar get-deps compile

doc:
	REBAR_DOC=1 rebar skip_deps=true get-deps doc