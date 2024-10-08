FROM python:3.11-slim

WORKDIR /app

# Install langchain
RUN pip install --no-cache-dir langchain

# Expose the port that LangChain server will use
EXPOSE 8080

# Start the LangChain server (assuming it can be run directly like this)
CMD ["python", "-m", "langchain.server"]