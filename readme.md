# Truffle playground

I was following [https://www.jitsejan.com/truffle-in-docker.html](https://www.jitsejan.com/truffle-in-docker.html)
but some things were outdated so I did a bit of tweaking to suit my needs

```
docker compose up -d
docker ps
docker attach truffleplayground_truffle_1 
truffle unbox webpack
```

If you don't overwrite the truffle-config.js file
during the webpack creation steps you can skip
the next step

## Set up network

ctrl p + ctrl q to detach from docker
and in the host os

```
sudo vim truffle.config.js
```

uncomment development and change host

 ```
 host: "127.0.0.1",
 ```

 to 

 ```
 host: "ganache",
```

## Test to see if tests pass
in docker constainer

```
truffle test --network development
```
