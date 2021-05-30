FROM uphold/litecoin-core:0.18.1
CMD ["litecoind", "-printtoconsole","-regtest=1"]
