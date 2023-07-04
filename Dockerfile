FROM python:3.11
RUN pip install poetry
WORKDIR /bot
COPY src/ /bot
RUN poetry config virtualenvs.create false && poetry install --no-interaction --no-ansi
CMD python lordofthevoid.py
