# cocotb website

This repository contains the source code for the cocotb website, available at
https://www.cocotb.org.

The site uses Jekyll as static site generator, which supports content written
in Markdown or HTML. The full documentation is available at the
[Jekyll documentation site](https://jekyllrb.com/docs/home/).

## Contributing

Pull requests to improve the website are appreciated.

## Development Setup

To preview changes to the website a setup with Ruby and Node.js is required. You
can either set it up manually, or just use Docker to get a reproducible build
environment.

Execute all commands from the root of the cocotb-web repository where you found
this README file.

```
# One-time step: build the Docker image
docker build -t cocotb-web-dev .

# Preview the site.
docker run --init -v $PWD:/app -p 4000:4000 -p 35729:35729 cocotb-web-dev
xdg-open http://localhost:4000/
```

The site is constantly updated if you make changes to any of the source files.
(Updates may take a couple seconds; watch the output of the `docker run` command
to see when it's done.)

## License

Except where otherwise noted, content on this site is licensed under a Creative
Commons Attribution 4.0 International license. No license is granted for logos
or trademarks. Refer to the [LICENSE](LICENSE) file for details.
