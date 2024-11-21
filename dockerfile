FROM ubuntu
RUN apt update && apt add python3
ENV FLASK_APP=crudapp.py
WORKDIR /workdir
COPY . .
RUN pip3 install --break-system-packages --no-cache-dir -r requirements.txt
EXPOSE 5000
RUN chmod +x ./script.sh
CMD [ "./script.sh" ]