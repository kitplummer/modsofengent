\newpage

# Technology: Services and Tools

The modern software engineer’s toolbox isn’t that different than what would’ve been found in the past.  However, if we head in the direction of the "right tool" for the job, then things get a little crowded.  Moreover, the breadth of skills required in a software engineering enterprise create a lot of specialty tools - many of which are brought in and then replaced by the next “new thing”.  But, as was discussed above, the need to continuously move forward shouldn’t be eschewed in favor of simpler or more assumed control.

For most enterprises a policy of BYOT (bring your own tools) doesn’t make sense, however it’s not beyond rational for most projects.  Developers, like artists, become more efficient with tools they are comfortable with.  This is one of the key tenets of PaaS infrastructure services.  They can allow developers with a simple way of abstracting common pieces from components that are used to deliver user-facing functionality.  For example, it does make sense for an enterprise to down-select a relational database system such as Oracle’s or PostgreSQL, and provide that universally through simple single-purpose database servers in a PaaS delivery environment.  Developers of mobile and web-based applications then just need the connection interfaces exposed appropriately for their use - not having to maintain any databases.

This ‘self-service’-focused approach also helps with testing, as it becomes possible for the integration testing to be optimized to a single database server and version - or at least minimize the variables.

Self-service sandboxes also need to be available for development and testing so developers can evaluate technologies as they become available - or release new versions.  By allowing developers and operators to investigate with as little cost or overhead, better awareness and thus decisions about technologies can be made.

## Vendor Independence, Tool Independence

We often here about vendor-lock when concerning systems that lock a consumer in, via a proprietary interface or storage pattern.  The same concerns for production systems regarding vendor lock, exist also for tools in the engineering chain.  Just as system software is evolving at a rapid pace, resolving vulnerabilities and adding new features - tools are constantly adding capabilities, enhancements and fixes too.  New tools replace existing tools for reasons.  Tool technology can very quickly become technical debt, especially when continuous delivery is the objective.  Open source helps this, as it is easier to see where the technology is going.  Proprietary tool manufacturers can hook the enterprise, then slack on updating or staying current with expected features.

Currently, the testing arena is advancing rapidly in part due to new workflow automation capabilities being combined with cloud platforms.  Tools for mobile development are also rapidly coming to market.  This makes it very difficult for the engineering enterprise to down-select and make tools available for engineers to use.
