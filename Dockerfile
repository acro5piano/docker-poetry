FROM python:3.6.2

ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app

RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python
ENV PATH /root/.poetry/bin:$PATH

# HACK: これを入れないと poetry install に失敗する
# RUN pip install googleapis-common-protos==1.5.5

# ADD pyproject.toml poetry.lock /app/
ADD pyproject.toml /app/

RUN poetry run pip install --upgrade pip setuptools

RUN poetry install

CMD ["bash"]
