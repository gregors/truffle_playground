# Truffle playground

```
docker compose up -d
docker ps
docker attach truffleplayground_truffle_1 
truffle unbox webpack
```

If you don't overwrite the truffle-config.js file
during the webpack creation steps you can skip
the next step

# Set up network 

```
vim truffle.config.js
```

uncomment development and change host

 ```
 host: "127.0.0.1",
 ```

 to 

 ```
 host: "ganache",
```

# Test to see if tests pass
```
truffle test --network development
```
