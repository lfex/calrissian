make:
	rebar3 compile

clean:
	rm -rf .rebar .rebar3 deps _build rebar.lock ebin/*

push:
	git push github master

push-tags:
	git push github --tags

push-all: push push-tags

build: clean
	rebar3 do compile, eunit

build-all: build

publish: clean
	rebar3 hex publish
