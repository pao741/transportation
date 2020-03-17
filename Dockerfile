FROM python:3.7
ADD . /code
WORKDIR /code
RUN pip install -r req.txt
CMD python3 app.py