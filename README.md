# Experiments on containerizing revive ads server

Right now this is a reproducer for revive-adserver/revive-adserver#1536.

Steps to reproduce:

```
docker compose up
```

in another terminal:

```
docker compose exec revive php scripts/installer install -H revive.example.com -f -vvv /tmp/installer.conf
```
