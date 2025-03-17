## Onboarding
```
npm i
npm start
```
Visit http://localhost:3000 to see the app running.

## Docker
Rough docker config. The application can be ran:

```
docker build -t app . && docker run -it --init --rm -p 3000:3000 app
```

## dotenv
Moved port number and environment (production | developement) into `.env`.
MSW mock server will not run in production environment. Ideally, it should be a dev dependency. 
Note, clear browser cache when switching between environments.
