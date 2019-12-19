FROM ipfs/go-ipfs:latest

COPY ./optRun /data/ipfs/optRun
COPY ./ipfs_default.list /data/ipfs/ipfs_default.list

USER ipfs
WORKDIR /data/ipfs
ENV IPFS_PATH /data/ipfs/ipfs_repo

ENTRYPOINT ["/data/ipfs/optRun"]
