<img src="https://raw.githubusercontent.com/okue/Haskyapi/master/html/img/logo.png" width="60%">

## What is Haskyapi ?

HTTP sever implemented in Haskell.

```
$ make
$ ./bin/haskyapictl
listen on 8080
http://localhost:8080
```

In default configuration, the root directory `/` is the `html` directory.

- [x] Open Markdown file

## TODO

- [ ] How to use Database easily
- [ ] Easy to implement RESTful api
- [ ] Automatic generator of api reference
- [ ] Use cgi

## Now

- [Simple TODO application](http://okue.site:8080/v2/ftodo/) works on Haskyapi.
- [/index.html](http://okue.site:8080/)
- [/page.html](http://okue.site:8080/page.html)
- [/markdown-page.md](http://okue.site:8080/markdown-page.md)
- [/api/title?url=https://github.com/okue/Haskyapi](http://okue.site:8080/api/title?url=https://github.com/okue/Haskyapi)
