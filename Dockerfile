FROM electronuserland/builder:wine

WORKDIR /project

ADD package.json /project
RUN npm install

ADD . /project

ENTRYPOINT /project/entrypoint.sh