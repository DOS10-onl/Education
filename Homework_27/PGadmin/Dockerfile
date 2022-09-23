FROM dpage/pgadmin4

USER root

RUN groupadd -r vlad && useradd -r -g vlad vlad

RUN mkdir -p  /opt/mydir

COPY --chown=vlad:vlad . /opt/mydir

USER pgadmin

ENV PGADMIN_DEFAULT_EMAIL=sdsdsd@mail.ru
ENV PGADMIN_DEFAULT_PASSWORD=7777777
