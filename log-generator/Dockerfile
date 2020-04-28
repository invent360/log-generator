FROM ubuntu:20.04

ARG LOG_COMMENT

RUN apt-get update && apt-get install -y software-properties-common

##  Tools Setup                     \
##  --------------------------------------------------------------------------------  ## \
RUN apt-get install                \
            --assume-yes            \
            --no-install-recommends \
            curl                    \
            mc                      \
            wget                    \
            git                     \
            htop                    \
 && echo -e "\n\tDEPLOYED: \t TOOLS \n" 

RUN apt-get install software-properties-common --assume-yes --no-install-recommends curl vim

RUN apt-get -y install python3-pip && apt-get update && curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && python3 get-pip.py --user

RUN pip3 install log-generator && pip3 install j2cli

COPY scripts/entrypoint.sh configs/log-config.j2 /

ENTRYPOINT ["bash", "entrypoint.sh"]