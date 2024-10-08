# Using the base Python image
FROM python:3.12-alpine

# Installing curl and dependencies
RUN apk update && apk add --no-cache curl
   
# Installing Python dependencies
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r /app/requirements.txt

# Command to run the bot
CMD ["python", "bot.py"]
