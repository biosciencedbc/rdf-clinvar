FROM ruby:2.5
#  https://blog.sshn.me/posts/invalid-byte-sequence-in-usascii/ 
ENV RUBYOPT -EUTF-8

RUN mkdir /work /data /log

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

ENTRYPOINT [ "/convert_clinvar" ]

