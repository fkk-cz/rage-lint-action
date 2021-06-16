FROM python:latest
RUN apt-get install git -yq && \
    git clone https://github.com/GoatG33k/rage-lint.git && \
    pip install -r rage-lint/requirements.txt
   
ADD . .
RUN chmod +x .docker/entrypoint.sh

ENTRYPOINT [".docker/entrypoint.sh"]