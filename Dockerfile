FROM ruby:2.5

RUN apt-get update && \
    apt-get install -y libraptor2-0 && \
    rm -rf /var/lib/apt/lists/*

ADD . /clinvar-rdf/

RUN cd /clinvar-rdf && \
    bundle install && \
    rake install

COPY docker-entrypoint.sh /

WORKDIR /data

ENV PATH $PATH:/clinvar-rdf/bin

CMD convert_clinvar
