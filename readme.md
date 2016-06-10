# Wiki
Searches a Confluence wiki

# Usage
Listens on port 8080.

```
./wiki -url <your-custom-confluence-url> -auth <base64-encoded-pass>
```

For the auth, you must encode "username:password" using Base64.  For example:

```
echo "admin:secretpass" | base64
```

Then add a custom command in Slack pointing to where your instance is running.
It will use the Confluence search for results.

# Build wiki.go for alpine
```
docker run -it -v "$PWD":/build -w /build golang:alpine go build wiki.go && mv wiki slacker-wiki # First we need to build the binary for alpine
docker build -t svenbcc/slacker-wiki . # Now we can build our slacker-wiki docker image
docker run -it -e AUTH=<myauth> -e URL=<myurl> -p 8080:8080 svenbcc/slacker-wiki # We can run the slacker wiki as docker - for useage of auth + url look above

```
