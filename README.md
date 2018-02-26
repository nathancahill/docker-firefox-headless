
# Firefox Headless Docker

Run Firefox 58+ Headless on Docker. Includes steps for loading from a local file://
but can easily be changed to load any URL.

### Usage

```
$ docker build .
$ docker run -p 6000:6000 <ID>
```

You can now connect to the debugger server from Firefox WebIDE by clicking Remote Runtime (localhost:6000).

### Gotchas this image handles

- Firefox requires a profile and user prefs for connecting to the debugger server without UI interaction.
- Local files must be loaded from a subdirectoy like /root/
