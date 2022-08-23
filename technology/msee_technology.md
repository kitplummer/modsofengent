\newpage

# Technology: Services and Tools

The modern software engineer’s toolbox isn’t that different than what would’ve been found in the past.  However, if we head in the direction of the "right tool" for the job, then things get a little crowded.  Moreover, the breadth of skills required in a software engineering enterprise create a lot of specialty tools - many of which are brought in and then replaced by the next “new thing”.  But, as was previously discussed, the need to continuously move forward shouldn’t be eschewed in favor of simpler or more assumed control.

For most enterprises a policy of BYOT (bring your own tools) doesn’t make sense, however it’s not beyond rational for most projects.  Developers, like artists, become more efficient with tools they are comfortable with.  This is one of the key tenets of PaaS infrastructure services.  They can allow developers with a simple way of abstracting common pieces from components that are used to deliver user-facing functionality.  For example, it does make sense for an enterprise to down-select a relational database system such as Oracle’s or PostgreSQL, and provide that universally through simple single-purpose database servers in a PaaS delivery environment.  Developers of mobile and web-based applications then just need the connection interfaces exposed appropriately for their use - not having to maintain any databases.

This ‘self-service’-focused approach also helps with testing, as it becomes possible for the integration testing to be optimized to a single database server and version - or at least to minimize the variables.

Self-service sandboxes also need to be available for development and testing so developers can evaluate technologies as they become available - or release new versions.  By allowing developers and operators the ability to investigate with as little cost or overhead, better awareness and thus decisions about technologies can be made.  

The modern software engineering landscape is broad, and deep even with the simplest of projects in tow.  It is extremely important that organizations manage services and tools centrally, and enterprise-wide where applicable - yet provide projects with levels of flexibility enabling them to optimize their practices.  Deep consideration for both physical and virtual workspaces must be given to ensure engineering teams can communicate and focus as needed

\newpage

## Vendor Independence, Tool Independence

We often here about vendor-lock when concerning top-level systems that lock a consumer in, via a proprietary interface or storage pattern.  The same concerns for production systems regarding vendor lock, exist also for tools in the engineering chain.  Just as system software is evolving at a rapid pace, resolving vulnerabilities and adding new features - tools are constantly adding capabilities, enhancements and fixes too.  New tools replace existing tools for reasons.  Tool technology can very quickly become technical debt, especially when continuous delivery is the objective.  Open source helps this, as it is easier to see where the technology is going.  Proprietary tool manufacturers can hook the enterprise, then slack on updating or staying current with expected features.

Currently, the testing arena is advancing rapidly in part due to new workflow automation capabilities being combined with cloud platforms.  Tools for mobile development are also rapidly coming to market.  This makes it very difficult for the engineering enterprise to down-select and make tools available for engineers to use. And it is even more difficult for practitioners to stay current.  Just as systems abstraction is good in architecture and design, so to does it apply to tool integrations.

Many software projects can be built in basic form, from the command line, using basic scripting technology.  This is important for a couple of reasons.  One, the scripts can be executed by machines (in continuous integration environments for example), and two it allows different tools to be used by developers in the coding and documenting process.

External providers too, such as public cloud providers, have become commonplace in engineering teams.  It has become really easy to depend on a provider for various critical pieces of the engineering process.  The challenge is to not be locked into their interfaces to the point where a change makes sense - for new features somewhere else, pricing changes, or just because the current provider can't support the team's needs.

It's generally best to stick to standards - where possible, even if just de facto.  The chances of getting caught in a place where changing is complex and expensive is reduced.
