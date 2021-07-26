FROM alpine:latest
VOLUME /mnt

CMD echo 1 > /mnt/vm/overcommit_memory

# a local dockerfile for avoid network problem
# see https://github.com/bkuhl/redis-overcommit-on-host for detail