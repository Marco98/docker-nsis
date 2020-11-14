# docker-nsis

Build NSIS-installers inside Docker

## Examples

### Makefile

```makefile
.PHONY: installer
installer:
    cp installer.nsi bin/installer.nsi
    docker run --rm -it \
    -v $(CURDIR)/bin:/build \
    -w /build \
    marco98/nsis makensis installer.nsi
```
