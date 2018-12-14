# Up And Running
Clone this repo into your local folder where you keep your Jupyter files.
Start it running: `docker-compose up`. This assumes that you have docker and
docker-compose installed.

Wait until you see the following lines in the log:
```bash
app           | [I 12:09:47.664 NotebookApp] Writing notebook server cookie secret to /root/.local/share/jupyter/runtime/notebook_cookie_secret
app           | [I 12:09:47.974 NotebookApp] Serving notebooks from local directory: /
app           | [I 12:09:47.975 NotebookApp] The Jupyter Notebook is running at:
app           | [I 12:09:47.976 NotebookApp] http://(app or 127.0.0.1):8888/?token=c42a72775228df437b944ee7aceb6ac060d7f5a0e70b93c5
```

Copy the line with the URL and replace the brackets with 127.0.0.1 and open it in the browser.

## Kill it ;)
`docker-compose down -v`

## Sheets
All files located in the SAME folder as  your `docker-compose.yml` will be
mounted into the `/sheets` folder in the docker container.

## Loading SQL Dump into Postgres
Add any **.sql** file into a folder called `sql-files`. All these files will
be imported when creating the container.

## Postgres Credentials
The credentials of the postgres DB are defined in the `docker-compose.yml` file.
The defaults are:
Username: `postgres`
Password: `pass`
URL: `postgresql`
Main DB name: `nyc_rides`
Port: `5432`

Connecting from a Jupyter file: `%sql postgresql://postgres:pass@postgresql:5432/nyc_rides`
