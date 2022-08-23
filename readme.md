## Contributing

This paper started as a simple document, with feeble aspirations.  It's since grown just a little bit, to encompass a much broader and slightly deeper target.  And most importantly, it's been repackaged in a form that aligns with software engineering.

Now, it's [out there](https://github.com/kitplummer/modsoftengent) for anyone to contribute to.

Please help, by commenting [in the commits](https://github.com/kitplummer/modsofengent/commit/6e5a4692949cf2742084aa49a7bb0688ac7528ed), by creating an [issue](https://github.com/kitplummer/modsofengent/issues), or forking the code base and submitting a [pull request](https://github.com/kitplummer/modsofengent/pulls?q=is%3Aopen+is%3Apr)

If you do contribute I'll add a *Contributions* section with a link to your contribution directly.

### Building

I've been able to build on Windows, macOS, and Linux.  But the dependencies for each, and installing them are different for each OS.  

#### Requires

pandoc (which has some depends itself, like pdflatex)

#### Run

$ `make pdf`

It'll spit out a new PDF file in the source directory.

$ `make html`

It'll spit out a single HTML file in the source directory.

Or...

$ `make all`