# cupsprintertesting

This little script framework is meant to test printer driver packages with a given cups/lib version inside lxd containers.

It creates and configurates a cups server inside a container and installs all available printers from
```bash
lpinfo -m
```
as printers to a file. Then the logs and the created files are preserved and analyzed for reviewing.

