# FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime


# RUN pip3 install -U pip && \
#     pip3 install python-dotenv && \
#     pip3 install -U torch torchaudio --no-cache-dir

# ADD . /app
# WORKDIR /app
# RUN rm -f .env && pip3 install -r requirements.txt  && \
#     yes | python code_dev.py 

FROM mullenlee/tools:clone-voice
ENV WEB_ADDRESS "0.0.0.0:9988"
EXPOSE 9988
CMD ["python3", "app.py"]