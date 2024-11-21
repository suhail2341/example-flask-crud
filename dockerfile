FROM ubuntu
RUN apk update && apk add --no-cache python3 py3-pip
ENV FLASK_APP=crudapp.py
WORKDIR /workdir
COPY . .
RUN pip3 install --break-system-packages --no-cache-dir -r requirements.txt
EXPOSE 5000
RUN chmod +x ./script.sh
CMD [ "./script.sh" ]