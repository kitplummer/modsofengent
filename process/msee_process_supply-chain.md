\newpage

## Supply Chain Management

The accelerated usage of software-based systems requires a well-defined, visible, controlled and optimized supply chain pipeline to control risk, costs and deal with the increasing size, scale and tempo of software change. Increased software usage challenges existing methods for how an organization manages source code for use and inclusion into military systems as well as its ability to adopt code changes in an expeditious manner. The software supply chain needs to being managed as an enterprise service catering to developers and software operators.

Current supply chain processes are significantly challenged by the speed of software change: standard practice is to let individuals or programs handle it themselves without making that supply chain available to the rest of the organization. This negatively impacts getting patches or updates to fix identified issues, decreasing operational effectiveness and increasing risk. Software systems software are evolving at accelerated speeds as well as having additional needs for vetting such as using multiple dependencies with libraries, firmware code and various modular build frameworks coupled with an increasing preference to using open source software. And since software is everywhere, not having a process and high speed governance on what an organization needs to operate should be considered negligent.

One evolving trend in the open source space, is the concept of dependency management - at the language/library level as well as application packages (common in Linux distributions).  The idea of software supply chains isn't new, but the actual handling of external or upstream dependencies as raw resources isn't typically found outside of highly-secure, mission/life critical applications.

For the modern software engineering enterprise, there's a need to be able to manage the ingress of software (i.e. languages, libraries, frameworks, systems, etc.) in a way that each artifact is vetted against the source - ensuring that it is what it is supposed to be and hasn't been tampered with.

Software artifact provenance is extremely important, for license compliance, as well as just ensuring that an organization knows what it is putting in the software it builds.  A the number or projects, or the complexity scales up for applications under development - so does the need to maintain a manifest of all software included.  It is also important that downstream engineers have a channel for getting notified when updates are available internal to the organization.

Managed repositories are required to centrally control the access both directions.  The use of central repositories is discussed in more detail below.
