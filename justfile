up:
	docker compose up

install:
	docker compose exec revive php scripts/installer install -H revive.example.com -f -vvv /tmp/installer.conf

reset:
	docker compose rm -fs

# vim: ft=make
