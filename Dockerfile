FROM rocker/r-ver:4.5.2

WORKDIR /app
COPY mean.R /app/mean.R
COPY correlation.R /app/correlation.R

ENTRYPOINT ["Rscript", "/app/mean.R"]
