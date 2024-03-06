targets = \
	setup \
	output/tinyllama-colorist-v1/checkpoint-200/README.md \
	output/tinyllama-sql-v1/checkpoint-200/README.md

all: $(targets)

.PHONY: setup
setup:
	pip install -r requirements.txt

output/tinyllama-colorist-v1/checkpoint-200/README.md:
	python3 train.py config/tinyllama-colorist.yaml

output/tinyllama-sql-v1/checkpoint-200/README.md:
	python3 train.py config/tinyllama-sql.yaml
