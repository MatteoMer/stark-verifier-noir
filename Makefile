.PHONY: cp prove test clean

clean:
	@rm -rf ${PWD}/target/
	@rm -rf ${PWD}/proofs/
	@rm Verifier.toml

prove:
	@nargo prove

test:
	@nargo test

# https://kyleshevlin.com/make-checkpoint/
cp:
	$(MAKE) clean
	@git add -A
	@git commit -m "checkpoint at $$(date '+%Y-%m-%dT%H:%M:%S%z')"
	@git push
	@echo Checkpoint created and pushed to remote

