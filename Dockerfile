FROM nginx:alpine
RUN mkdir app
COPY intro.md /app
COPY preguntas.md /app