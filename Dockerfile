from gliderlabs/alpine
maintainer evan hazlett "<ehazlett@arcus.io>"
run apk add --no-cache ca-certificates bash
add slacker-wiki /usr/local/bin/slacker-wiki
add run.sh /usr/local/bin/run
expose 8080
cmd ["/usr/local/bin/run"]
