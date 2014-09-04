\newpage

## Project-Specific

Flexibility in enterprise processes and tools is required to ensure that square projects aren’t forced into round holes.  However, all projects should conform to the security and artifact delivery requirements expected and specified by customers.  In many cases each project will have specific target (where ever the software is supposed to run) requirements.  It is essential that the engineering team have access to custom workflows that can instantiate the target-specific environments for development and testing - most likely to include configuration management manifests for the machines in that environment.

Just as important to the local development environment, the physical environment must be optimized for efficiency.  The environments should be optimized to allow engineer communications and messaging, as well as allow for quick state reviews without worrying about simple things like conference room availabilities.

As it is possible that the modern software engineering environment is geographically distributed, the projects need to ensure they are supported by enterprise-managed communications tools.

### Delivery requirements

It isn't abnormal to expect that each customer have unique requirements for delivery of software artifacts, and in some cases there may be multiple paths for delivery - based on different sets of deliverables.  In all cases the workflow should be documented, and optimized for efficiency and repeatability - and automated as much as possible.

The documentation should be used as an entry point for continuous improvement and auditing activities.  

As mentioned in the section on Agile it is really important that all processes be reviewed.  And so should any automation that is built to support processes.  Where possible, automated notifications should be used to inform engineering team and stakeholders of any automation or process changes made.

### Target Matrix

While the paper discusses continuous integration as an enterprise-wide service that should be provided universally to all projects (as a self-service function) there are definitely cases where project-specific requirements dictate unique machine configurations for testing.  

For example, a customer may be required to run software on a specific target platform.  Let's use Solaris as a special case target.  Enterprise engineering support only provides Windows and Linux machines.  In cases such as this, where the engineering team might be the Solaris expertise it may be required that a special purpose Solaris environment be created for continuous integration and testing pipeline specifications.  In some cases it might just be a special virtual machine that gets created as a build/test agent for the master continuous integration environment.

One of the most important aspects with regards to targets, is the ability to recreate and rerun specific test cases.  With this in mind it is an absolute that target machines get managed via some kind of manifest of base machine that can be reproduced (to the test state).  

Because scaling to support permutations of configurations is important, as much of the target provisioning and configuration should be automated.

### Development Environments

Deploy on day one!  While Etsy, a marketplace for craft goods, has made its position in the microservices vs. monolithic discussion for the latter the bigger discussion is on their ability to rapidly on-ramp new developers[^projectspec1].  To sum it up Etsy uses packaged virtual machines that contain a complete replica of the production environment plus development tools.

By removing the need for a developer to first select, then install and configure a handful of tools, it becomes possible for anyone to quickly get to issues and tasks at hand.  But, there is a lot happening, and that has happened, behind the scenes in order for this opportunity to exist.

Creating a virtual machine isn’t all the complicated, but creating one automatically is.  Do you create a new machine every time there is a change to the codebase, environment configuration, or operating system and configuration?  Well, yes and that’s why it needs to be automated.  But, what if a developer already has the virtual machine, do they need to get a new one with every change?  No, of course not...but they will need to update their locale codebase and configuration to match any changes downstream (in production).  This done by using by source code management (with a version control system) and configuration management (using a tool like Puppet, Chef, Ansible, etc.).  Any changes captured anywhere in the system-whole configuration are applied locally to the VM.  This isn’t without challenge, because obviously the system configuration IS different locally - network, hostname, etc. so care must be taken in the configuration being applied to note the differences.  In the VM and cloud world almost everything boils down to a DNS/naming issue so the attempt here is to simply trick the local environment into thinking it is production.

Although Etsy’s objectives are being met, they get developers committing on the first day (and even deploying to production), most enterprises are less concerned about developer productivity and more concerned about operations and production optimizations (i.e. scaling).  The modern software engineering enterprise is concerned about all the above, as well as being able to provide a path for optimizing the security of upstream dependency changes.  Also, while a single monolithic VM makes transporting the "environment" from dev to test and to a production environment a bit simpler, it doesn’t necessarily reflect reality.  And transportability isn’t the underlying intent at Etsy, it is simply to remove the burden on developers to maintain a working dev environment.  One of the upsides and downsides is that developers can end up effecting system pieces unintentionally.  In traditional environments these things are usually trapped during ‘integration’ testing.  The downside is that the issue may actually be caused by one of the integration components and not the piece under development.  As with everything it is best to evaluate the objectives and requirements, identifying a balance between isolating discrete services and applications, and the optimal container and delivery apparatus.

It is worth pointing out here that the differences really are indeed architectural, but in response to modern operating environments.  The availability of cloud resources (public and private, and in some cases both) has made it easier to decouple and componentize services and application functionality with scalability - by design.  Even if you were running core services (e.g. databases) on bare metal servers, following a multi-tier architecture - it is possible to provide developers with hosted replicas that stay in sync with production data.  And the same can be done for middleware (asynchronous messaging, external processors, etc.).  

As long as it IS possible for developers to develop, and commit on day one, we’re stepping in the right direction towards the objective delivery targets.

### Configuration Management!

Briefly mentioned above is the engineering and operational concept of Configuration Management, not to be confused with Change Management or the SEI’s definition[^projectspec2].  The UK Governments' new initiative around enterprise-side coding is spot on, specifically with their tie to "Infrastructure as Code"[^projectspec3].  Infrastructure as code is a key principal in being able to manage the relationships between dev, test(s) and production environments.  Drift[^projectspec4], or the potential for discrepancies between the environments, is a manageable thing, simply by having a high-assurance that each configuration shares the same source definitions (at least a major level, with only minor deltas to accommodate for the actual differences in network and naming configuration).  When combined with a solid release strategy, configuration management can complete the “bill of materials” as a service or product goes through the dev to production delivery processes.

There is a good selection of tools available for solving configuration management problems.  Some are better than others, but the space is evolving rapidly.  Configuration management is a delicate space, and support for the system is essential - both from an external (customer service agreement) and internal (IT-supported) perspective.  Internally the modern enterprise should evangelize the activity and the tools that it supports to ensure that development and operations teams alike get the message.  Configuration management is new enough that it isn’t completely pervasive.

Configuration management, just like software development, is a coding-based skill.  The notion of ‘infrastructure as code’ is just that, treat it like code.  This means that the infrastructure is versioned.  All of the configuration management tools are code-based, some use domain-specific languages (on top of a scripting language) which can require a bit of learning overhead, no different than any technology dependency.  Regardless, proper evaluation is required to ensure that both operations and development staff can develop the configuration, maintain it, and utilize it to configure all environments.

One last point on configuration management: it should be used to baseline configurations, allowing for developers and operators to test changes, evaluating the effects in an automatable way.  In most cases this is a simple branching pattern, that developers should be familiar with.  Because there are skills and experience in play in configuration management that bridge both development and operations it usually gets lumped into the DevOps world.  There’s nothing wrong with this, it is indeed one aspect of DevOps - but an enterprise does not need a DevOp position in order to do configuration management.

### Integrated Development Environments (IDEs)

Many developers rely on an environment that provides a consolidated application for their development activities.  The Android and iOS SDKs, Java, and C++/.NET on Windows still are dominated by IDEs for development.  While there are multiple IDE options for each of these platforms it is in the enterprises best interest to support only one.  While smaller organizations may be able to support a BYOT environment, large scale engineering environments would benefit from the continuity and common documentation that supported a single operational base platform.  From there developers can use desktop virtualization to support the actual development toolchain.

#### VMs - Vagrant

There are a few options for desktop virtualization.  For the most part, from a machine perspective there's little difference between them.  In addition, just working with machine images misses the point to a degree.  Because most development environments are evolving and dynamic, it is important to combine the VM tools with a configuration management toolset - and use configuration manifests to keep machines up-to-date.

Here's a few links covering the greatness that is the tool Vagrant, which allows developers to programmatically control there VM configurations:

[https://www.andrewmunsell.com/blog/development-environments-with-vagrant-and-puppet](https://www.andrewmunsell.com/blog/development-environments-with-vagrant-and-puppet)

[http://markgoodyear.com/2014/03/better-development-environments-with-vagrant/](http://markgoodyear.com/2014/03/better-development-environments-with-vagrant/)

[http://blog.kloudless.com/2013/07/01/automating-development-environments-with-vagrant-and-puppet/](http://blog.kloudless.com/2013/07/01/automating-development-environments-with-vagrant-and-puppet/)

Even Microsoft is in:

[http://msopentech.com/blog/2014/03/31/building-development-environment-vagrant-puppet/](http://msopentech.com/blog/2014/03/31/building-development-environment-vagrant-puppet/)

#### Containers (Docker)

Container technology is evolving rapidly.  And, since this is a paper discussing the modern software engineering enterprise it can't be ignored. Docker[^projectspec5] has turned the technology world, with an opportunity, with no rival.  While virtual machine technology and cloud technologies are the main focus of enterprise infrastructure opportunities, Docker brings modern containerization to the masses - in a mainly open source way.  And for the most part Docker is playing an industry darling with major players such as Google and RedHat primed with their products using Docker.  Simply put, containers simplify the abstraction between a virtual machine and the host operating system, using more of the latter to provide capabilities inside the machine.  This shift of responsibility makes containers really lightweight, portable and application focused.

While some organizations are already operationalizing Docker, most are using it as a developer tool, to simply the local environment.  This makes sense, and it always creates an on-ramp as containers can be used as a delivery apparatus between dev and various stages of testing.  Docker is also logical choice for basic continuous integration activities.  While Docker is Linux-only, combining it with a CI server allows for elastic build agents.

Here's a few links to material on Docker as a dev environment:

[http://www.drdobbs.com/architecture-and-design/containers-for-development/240168801](http://www.drdobbs.com/architecture-and-design/containers-for-development/240168801)

[http://www.slideshare.net/jpetazzo/docker-and-containers-for-development-and-deployment-scale12x](http://www.slideshare.net/jpetazzo/docker-and-containers-for-development-and-deployment-scale12x)

[http://www.fig.sh](http://www.fig.sh)


### The Physical Environment

Engineers are special, and good ones are exceptional.  In order to hire, and keep, good talent it is essential that the physical working space accommodate their needs (and their team's needs).  In addition, it’s important to make generic information available to engineer’s passively.  Wall mounted monitors are a great tool for this.  Keeping engineers in tune with organizational efforts is also a good way to identify opportunities for collaboration.  While the intent should not be to gamify developer activities, it is possible to use basic statistics about workflow progress and application performance as a way to incentivize continuous delivery and improvement.  Sandbox resources should also be available - tools for personal experiments and a generic playground for inviting creativity that's relative to the products and services being engineered.

There are a few open discussions[^projectspec] about what is actually required for developer effectiveness and efficiency.  Multiple monitors connected to a high powered laptop are an absolute must.  Screen real estate is as important is the physical desktop.  As the modern development environment includes virtual machines the laptop must be powerful enough to run its host OS, plus a couple others (memory and CPU). The ability to be mobile is essential, developers are much more likely to work hard at different times - some of which might be away from the desk.

### The Distributed Environment

There are many reasons for a major up-tick in the number of professionals working remotely.  The biggest justification for enterprises is that it is just required to maintain a quality workforce.  Many employees are unwilling to relocate, and are looking for opportunities to commute less.  And in some cases enterprises just have facilities in many geographically distributed areas - or even globally.  From a technical perspective there are very few justifications for having employees in the same physical location.  The biggest reason is for operational security, and protection of the codebase.  Even with virtual private networking capabilities it is very difficult to ensure the security of both the local engineering environment and enterprise services.  In most cases, unless there is critical security, as in National, requirements remote environments are secure enough.

One of the challenges inherent in remote work, is managing inclusiveness.  If one member is remote, while the rest of the team shares a physical office space, it can become very difficult for the remote working to stay engaged, especially as ad-hoc activities are easy for those in the office.  The team, specifically the leadership must work to engage the remote staff at all times.

Another challenge is when any of the team members are spread across timezones.  Scheduling meetings, in particular recurring ones (e.g. daily standups), can become difficult as the most logical time is early or late in the day.  The question becomes "whose day?".

The virtual office isn’t for everyone[^projectspec#].  There are many challenges on both sides - but most are personal and cultural.  There are a handful of tools that can help manage the challenges from both sides - first is a central issue/bug tracking system.  Aside from the need to track and collect knowledge on the project itself, the centralized issue tracker serves as a basic time and effort management system.  Effort is one of the greatest factors in the teleworking group dynamic.

[^projectspec1]:[http://codeascraft.com/2012/03/13/making-it-virtually-easy-to-deploy-on-day-one/](http://codeascraft.com/2012/03/13/making-it-virtually-easy-to-deploy-on-day-one/)
[^projectspec2]:[https://www.sei.cmu.edu/productlines/frame_report/config.man.htm](https://www.sei.cmu.edu/productlines/frame_report/config.man.htm)
[^projectspec3]:[https://www.gov.uk/service-manual/making-software/configuration-management.html#infrastructure-as-code](https://www.gov.uk/service-manual/making-software/configuration-management.html#infrastructure-as-code)
[^projectspec4]:[http://java.dzone.com/articles/infrastructure-code-when](http://java.dzone.com/articles/infrastructure-code-when)
[^projectspec5]:[http://www.techrepublic.com/article/why-docker-and-why-now/](http://www.techrepublic.com/article/why-docker-and-why-now/)
[^projectspec#]:[http://www.techrepublic.com/blog/10-things/10-signs-that-you-arent-cut-out-to-be-a-telecommuter/](http://www.techrepublic.com/blog/10-things/10-signs-that-you-arent-cut-out-to-be-a-telecommuter/)
