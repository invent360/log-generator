# while true; do sleep 2 ; echo "{\"app\": \"dummy\", \"foo\": \"bar\"}"; done
j2 log-config.j2 > config.yml

log-generator /config.yml