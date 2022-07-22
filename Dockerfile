from ubuntu

RUN apt update && apt install wget curl libicu-dev -y
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt install nodejs -y

RUN wget -O- https://aka.ms/install-vscode-server/setup.sh | sh

CMD code-server --accept-server-license-terms --disable-telemetry