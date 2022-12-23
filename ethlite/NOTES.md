# Notes Ethlite


### todos


add better / more error handling - why? why not?

message":"execution reverted: Invalid token

check if error codes are available??

==> calling method >tokenURI< with args >[0]<...

```
json_rpc POST payload:
{"jsonrpc":"2.0","method":"eth_call","params":[{"to":"0x6c1c678428cc3793a53471c9304fc0372594dbbc",
"data":"0xc87b56dd0000000000000000000000000000000000000000000000000000000000000000"},"latest"],"id":4}

json_rpc response.body:
{"jsonrpc":"2.0","id":4,
"error":
  {"code":3,
   "data":"0x08c379a00000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000000d496e76616c696420746f6b656e00000000000000000000000000000000000000",
   "message":"execution reverted: Invalid token"}}
```

==>  calling method >tokenURI< with args >[0]<...

execution reverted: ERC721: invalid token ID

```
json_rpc POST payload:
{"jsonrpc":"2.0","method":"eth_call","params":[{"to":"0xfa751bb98e49a2a8113de92d21c2266d5655f274","data":"0xc87b56dd0000000000000000000000000000000000000000000000000000000000000000"},"latest"],"id":4}

json_rpc response.body:
{"jsonrpc":"2.0","id":4,"error":{"code":3,"data":"0x08c379a0000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000184552433732313a20696e76616c696420746f6b656e2049440000000000000000","message":"execution reverted: ERC721: invalid token ID"}}
```


###  Ethlite Sources

- abi code initially based on <https://github.com/Bloxy-info/web3-eth>


refactor:

- move / use rlp from eth gem  inline /in-place
  and remove dependency on rlp gem - why? why not?

- move utils  to  "top-level" and merge all utils (utility) into one



