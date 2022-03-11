FROM alpine:3.15

RUN apk add --no-cache build-base perl perl-utils perl-dev unzip imagemagick zip fbida-exiftran
RUN cpan File::ShareDir::Install ExtUtils::MakeMaker Modern::Perl Encode::Locale File::Copy::Recursive File::Slurper File::ShareDir File::Symlink::Relative Image::ExifTool JSON::Tiny Time::Progress File::SearchPath Mojo::DOM58 

WORKDIR /sitelen-mute

ADD ./script/ script/
ADD ./share/ share/
ADD ./lib/ lib/
ADD ./Makefile.PL ./Makefile.PL

RUN perl Makefile.PL && make install

VOLUME [ "/pictures" ]
VOLUME [ "/gallery" ]

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]