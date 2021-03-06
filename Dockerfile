FROM python:3.6.2

ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app

RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
ENV PATH /root/.poetry/bin:$PATH
RUN poetry config settings.virtualenvs.in-project true

ADD pyproject.toml app.py /app/

RUN poetry run pip install --upgrade pip setuptools
RUN poetry install

CMD ["poetry", "run", "app.py"]
