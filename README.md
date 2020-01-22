# rdf-clinvar

ClinVar XML to RDF Converter

## Requirements

- Docker

## Installation

```bash
$ docker build --tag rdf-clinvar .
``` 

## Execution
$ docker run --rm -v [WORK]:/work -v [DATA]:/data rdf-clinvar
[WORK]: Download file location
[DATA]: Converted file location

