FROM debian:9.5-slim

LABEL "com.github.actions.name"="turbo-spoon"
LABEL "com.github.actions.description"="Actions for Pushing to Gemfury!"
LABEL "com.github.actions.icon"="upload"
LABEL "com.github.actions.color"="red"

LABEL "repository"="http://github.com/Decisiv/turbo-spoon"
LABEL "homepage"="http://github.com/Decisiv/turbo-spoon"
LABEL "maintainer"="Ryan Billington <rbillington@decisiv.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
