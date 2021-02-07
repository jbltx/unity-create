ARG IMAGE
FROM $IMAGE

LABEL "com.github.actions.name"="Unity - Create"
LABEL "com.github.actions.description"="Create an empty Unity Project."
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="gray-dark"

LABEL "maintainer"="Mickael Bonfill <jbltx@protonmail.com>"

ADD steps /steps
RUN chmod -R +x /steps
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
