# GKC

GKC is a high-performance first order logic reasoning system optimized
for large knowledge bases. It can prove formulas, answer questions and
convert between different logical syntaxes. See the
[paper](https://link.springer.com/chapter/10.1007%2F978-3-030-29436-6_32)
for an overview of GKC.

GKC is licenced under [AGPL v3](https://www.gnu.org/licenses/agpl-3.0.en.html).
The author of GKC is [Tanel Tammet](https://github.com/tammet). And the GKC repository is on [github.com/tammet/gkc](https://github.com/tammet/gkc).

This repository provides a Docker image for running GKC.

## Getting started

### Docker CLI

```bash
docker run -dit --rm \
  --name gkc \
  -v ./:/input \
  ghcr.io/m8ke/gkc-cli
```

### Use GKC

```bash
docker exec -it gkc /gkc /input/example/logic.txt -print 10
```
