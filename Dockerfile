FROM node:10

WORKDIR /app

ENV PATH /app:$PATH

RUN npm install -g redoc-cli@0.6.1
RUN printf '#!/bin/bash\nredoc-cli "$@"' > bootstrap.sh
RUN chmod +x bootstrap.sh

ENTRYPOINT ["bootstrap.sh"]
