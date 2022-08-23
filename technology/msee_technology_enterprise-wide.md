\newpage

## Enterprise-Wide

Oversight is always hard, especially in large organizations.  The complexity of software projects doesn’t make it any easier - there are so many technologies coming and going.  It is extremely important for the engineering enterprise to provide a level control to the distribution of projects and teams.  Controlled but not totalitarian.  Project teams must be empowered to make decisions on technology choices - informed decisions.

There is a solid consensus these days that issue tracking[^techent1], version control[^techent2] and continuous integration[^techent3] are absolute services, required in the enterprise offering.  It is best that these do exist and get maintained at an enterprise level.  Maintaining such systems per project adds overhead to teams that should be focused on solving problems.  Also, it’s important to provide a universal workflow to teams, so engineers and managers who transition on, or to another team get a familiar experience.  It is common in large organizations for multiple tools options of the same function be offered.  This is a risk, and a red-flag - as it creates silos of projects and prevents collaboration across boundaries.  It also makes it difficult for engineers to on-board and quickly become efficient in project practices.

Self-service is a must, at a minimum developers must have an easy path to request capabilities and/or update paths for software.

Operational environments must be well understood top-to-bottom to ensure the developers and security staff generate and work against realistic requirements.  A continuous dialog must exist between infrastructure providers, support staff, and project and technical leadership to ensure that common understanding can be captured and groomed over time, as requirements evolve or die.

### Ephemeralization

As the need to do more with less infiltrates every organization so does the need for the infrastructure to enable it.  In most cases less comes in the form of abstractions, where work is hidden in layers of simplified interfaces.  This risk with over-abstraction is the increase in interface complexity, and inability to accommodate changes up or down in the stack.  Adam Wiggins, founder of Heroku puts it in the context of [Machetes, not Swiss-Army knives](http://adam.herokuapp.com/past/2011/4/7/ephemeralization/) which accurately describes the needs-to-solutions ratio.  Tools must be flexible to support many needs, not singular tools for singular solutions that create typical IT maintenance nightmares.

### Testing Toolkits and Infrastructure

For the same reasons as having a common issue tracking tool, it is optimal to manage a centralized functional testing environment.  Regardless of whether you’re developing a simple web app, mobile interface, or a highly complex desktop application - the benefit of having a common suite are test reuse, and test-writing optimization.  From an operations perspective, having a common suite (meaning tools for each target down-selected) test resources can also be reused, or made dynamic, provisioning only when a test operation is required.  In some cases, tests may be externalized - running on public (secured) infrastructure when demand requires.

### Continuous Integration and the Pipeline

Continuous integration services are prime for cloud deployment.  In addition, the elasticity provided by IaaS services allows for all build and test targets to be provisioned, configuration and run in parallel, as demand requires.

### Cloud (Public AND Private)

Cloud ain't cheap nor easy, not for production, or for development, or for test, or for maintenance - they all have an impact on the bottom line. It isn’t easy to develop for either - at least in order to take advantage of any provider’s features.  And then there’s cloud-lock.  While Amazon’s API is the de facto standard, and most other providers accommodate it to simplify transition to their services.  All of the "cloud" libraries do Amazon API, and a slew of others, so from an application development perspective it IS possible to garner a bit of abstraction.  But, to really take advantage of a providers’ features (elasticity, deployment, monitoring, etc.) you’re going to get into the weeds quickly - and thus cloud locked.

That are however enough good reasons for developers having access to a self-service replica of the production environment - to sandbox concepts, new software dependencies and to prove out performance updates.  Virtual machines are a step in the right direction and when combined with configuration management techniques can prove really useful - as long as they supported enterprise wide.  That said desktop virtualization is only as good as the continuous delivery chain, and the ability for machines and configuration to be distributed.

The discussion of private versus public is well beyond the scope of this paper.  However, it should be stated there are pros and cons to both from a development environment perspective.  Public cloud services like IaaS and PaaS can be very accommodating to development environments, and proof of concepts - especially where the engineering teams are geographically separated.

### Distributed Version Control System

This one is almost an absolute.  Aside from the reasons associated with intellectual property and access controls having all source code managed centrally allows for discovery, static analysis, and uniform tooling.  Most importantly a distributed version control system (DVCS) combined with a social front-end (e.g. Github or Bitbucket) can be used to establish a culture of sharing and collaboration.

### Artifact Control (general and language-specific)

As discussed in the Process chapter, artifact repositories are required to aid in the establishment of solid and secure ingress pipelines.  They also allow the enterprise to control components for consumption.  For example, if an artifact version is known to have vulnerabilities it can be red-flagged and prevented from being consumed.  Central repositories also enable simple notification channels for engineers on the availability of new versions.

### Monitoring

Feedback to developers is critical in identifying operational issues, regardless of the architecture.  However, the architecture itself must be monitored - across interfaces, to ensure there are no cross-system issues (at any time, or over time - trends).

[^techent1]:[http://mashable.com/2014/02/16/bug-tracking-apps/](http://mashable.com/2014/02/16/bug-tracking-apps/)
[^techent2]:[http://en.wikipedia.org/wiki/Revision_control](http://en.wikipedia.org/wiki/Revision_control)
[^techent3]:[http://www.extremeprogramming.org/rules/integrateoften.html](http://www.extremeprogramming.org/rules/integrateoften.html)
