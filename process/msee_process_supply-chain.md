\newpage

## Supply Chain Management

One of the evolving trends in the open source space, is the concept of dependency management - at the language/library level as well as application packages (common in Linux distributions).  The idea of software supply chains isn't new, but the actual handling of external or upstream dependencies as raw resources isn't typically found outside of highly-secure, mission/life critical applications.

For the modern software engineering enterprise, there's a need to be able to manage the ingress of software (i.e. languages, libraries, frameworks, systems, etc.) in a way that each artifact is vetted against the source - ensuring that it is what it is supposed to be and hasn't been tampered with.

Software artifact provenance is extremely important, for license compliance, as well as just ensuring that an organization knows what it is putting in the software it builds.  A the number or projects, or the complexity scales up for applications under development - so does the need to maintain a manifest of all software included.  It is also important that downstream engineers have a channel for getting notified when updates are available internal to the organization.

[Do I recognize the open source channel back upstream?]

Managed repositories are required to centrally control the access both directions.  The use of central repositories is discussed in more detail below.
