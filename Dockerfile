FROM weastur/poetry:2.1.3-python-3.12-alpine3.20

WORKDIR /bot
COPY . /bot

RUN poetry install

ENTRYPOINT [ "poetry", "run", "python", "src/bot.py" ]