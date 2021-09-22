`./compose` is a shortcut for `docker-compose`, it shorten 
```
docker-compose \
-f docker-compose.yml \
-f docker-compose.$ENVNAME.yml \
--enf-file .env.$ENVNAME
``` 
to `./compose $ENVNAME` 

See the [file source](../compose) for detail.