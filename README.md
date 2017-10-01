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
- [ ] How to implement RESTful api easily
- [ ] Automatic generator of api reference document
- [ ] CGI
- [ ] HTTPS
- [ ] Root directory setting

## Now

Haskyapi works at [okue.site:80](http://okue.site/)

- [Simple TODO application](http://okue.site/v2/ftodo/)
- [/index.html](http://okue.site/)
- [/page.html](http://okue.site/page.html)
- [/markdown-page.md](http://okue.site/markdown-page.md)
- [/api/title?url=https://github.com/okue/Haskyapi](http://okue.site/api/title?url=https://github.com/okue/Haskyapi)
