# Solidity

Solidity + nix with flakes


- https://docs.soliditylang.org/en/v0.8.8/using-the-compiler.html#basic-usage
- https://docs.soliditylang.org/en/v0.8.8/solidity-by-example.html#voting


```bash
nix \
develop \
github:ES-Nix/Solidity/main
```


### If working locally

```bash
nix develop
```

```bash
solc --version
```

```bash
solc --bin voting.sol
```

```bash
solc -o build --bin --ast-compact-json --asm voting.sol
```

