# rdf-clinvar

ClinVar XML to RDF Converter

## Requirements

- Docker

## Installation

```bash
$ docker build --tag rdf-clinvar .
``` 

## Run
```bash
$ docker run --rm -v [WORK]:/work -v [DATA]:/data rdf-clinvar [OPTION]
``` 
[WORK]: Download file location

[DATA]: Converted file location

[OPTION]: -f Convert local files when no new remote files are available.
