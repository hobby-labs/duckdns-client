# duckdns-client
This is a client of duckdns.org used at my home server.

# Usage
Take your domains and token from duckdns.org.
Then write down your token at `config`.
```
TOKEN=xxxxxxxxxxxxxxxxx       # <- Fill out your token here
LOG_DIR=/var/log/duckdns
```

Then run `duck.sh` like below.

```
./duck.sh ${your_prefix_of_domain_01} ${your_prefix_of_domain_02}
```

If you manage domains like `my-pretty-domain.duckdns.org` and `my-best-domain.duckdns.org`, you can run the command for example.

```
./duck.sh my-pretty-domain my-best-domain
```

Of course, you can also run the command by each domain.

```
./duck.sh my-pretty-domain
./duck.sh my-best-domain
```
