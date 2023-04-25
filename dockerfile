FROM python
COPY /app/requirements.txt .
RUN pip install -r requirements.txt
WORKDIR /app
COPY . /app
ENV PORT 5001
ENV PYTHONUNBUFFERED=1
EXPOSE 5001
# ENTRYPOINT [ "python" ]
CMD ["python","-u","app/app.py"]
