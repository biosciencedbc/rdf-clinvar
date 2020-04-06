FROM ruby:2.5

RUN mkdir /work && mkdir /data

RUN apt-get update && \
    apt-get install -y libraptor2-0 && \
    rm -rf /var/lib/apt/lists/*

ADD ./ /

WORKDIR /

RUN git clone https://github.com/med2rdf/clinvar.git clinvar-rdf

RUN cd /clinvar-rdf && \
    bundle install && \
    rake install

WORKDIR /data

CMD /convert_clinvar

