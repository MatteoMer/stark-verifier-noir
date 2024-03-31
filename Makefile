.PHONY: cp prove test clean

clean:
	@rm -rf ${PWD}/target/

prove:
	@nargo prove

test:
	@nargo test

# https://kyleshevlin.com/make-checkpoint/
cp:
	@git add -A
	@git commit -m "checkpoint at $$(date '+%Y-%m-%dT%H:%M:%S%z')"
	@git push
	@echo Checkpoint created and pushed to remote

