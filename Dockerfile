FROM ruby:2.5

RUN apt-get update && \
    apt-get install -y libraptor2-0 && \
    rm -rf /var/lib/apt/list/*

ADD ./clinvar /clinvar-rdf/
ADD ./convert_clinvar /

RUN cd /clinvar-rdf && \
    bundle install && \
    rake install

WORKDIR /data

CMD /convert_clinvar







