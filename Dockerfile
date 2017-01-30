FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.2

RUN gem install bio-kmer_counter --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["kmer_counter.rb"]
CMD ["--help"]
