\newpage

## Project-Specific

Flexibility in enterprise processes and tools is required to ensure that round projects aren’t forced into square holes.  However, all projects should conform to the security and artifact delivery requirements.

Delivery requirements

Target matrix

Dynamic machines for special requirements

Automated workflows

### Development Environments

Deploy on day one!  While Etsy, a marketplace for craft goods, has made its position in the microservices vs. monolithic discussion for the latter the bigger discussion is on their ability to rapidly on-ramp new developers (NOTE:  http://codeascraft.com/2012/03/13/making-it-virtually-easy-to-deploy-on-day-one/
).  To sum it up Etsy uses packaged virtual machines that contain a complete replica of the production environment plus development tools.

By removing the need for a developer to first select, then install and configure a handful of tools, it becomes possible for anyone to quickly get to issues and tasks at hand.  But, there is a lot happening, and that has happened, behind the scenes in order for this opportunity to exist.

Creating a virtual machine isn’t all the complicated, but creating one automatically is.  Do you create a new machine every time there is a change to the codebase, environment configuration, or operating system and configuration?  Well, yes and that’s why it needs to be automated.  But, what if a developer already has the virtual machine, do they need to get a new one with every change?  No, of course not...but they will need to update their locale codebase and configuration to match any changes downstream (in production).  This done by using by source code management (with a version control system) and configuration management (using a tool like Puppet, Chef, Ansible, etc.).  Any changes captured anywhere in the system-whole configuration are applied locally to the VM.  This isn’t without challenge, because obviously the system configuration IS different locally - network, hostname, etc. so care must be taken in the configuration being applied to note the differences.  In the VM and cloud world almost everything boils down to a DNS/naming issue so the attempt here is to simply trick the local environment into thinking it is production.

Although Etsy’s objectives are being met, they get developers committing on the first day (and even deploying to production), most enterprises are less concerned about developer productivity and more concerned about operations and production optimizations (i.e. scaling).  The modern software engineering enterprise is concerned about all the above, as well as being able to provide a path for optimizing the security of upstream dependency changes.  Also, while a single monolithic VM makes transporting the "environment" from dev to test and to a production environment a bit simpler, it doesn’t necessarily reflect reality.  And transportability isn’t the underlying intent at Etsy, it is simply to remove the burden on developers to maintain a working dev environment.  One of the upsides and downsides is that developers can end up effecting system pieces unintentionally.  In traditional environments these things are usually trapped during ‘integration’ testing.  The downside is that the issue may actually be caused by one of the integration components and not the piece under development.  As with everything it is best to evaluate the objectives and requirements, identifying a balance between isolating discrete services and applications, and the optimal container and delivery apparatus.

It is worth pointing out here that the differences really are indeed architectural, but in response to modern operating environments.  The availability of cloud resources (public and private, and in some cases both) has made it easier to decouple and componentize services and application functionality with scalability - by design.  Even if you were running core services (e.g. databases) on bare metal servers, following a multi-tier architecture - it is possible to provide developers with hosted replicas that stay in sync with production data.  And the same can be done for middleware (asynchronous messaging, external processors, etc.).  

As long as it IS possible for developers to develop, and commit on day one, we’re stepping in the right direction towards the objective delivery targets.

### Configuration Management!

Briefly mentioned above is the engineering and operational concept of Configuration Management, not to be confused with Change Management or the SEI’s defintion (NOTE:  https://www.sei.cmu.edu/productlines/frame_report/config.man.htm ).  The UK Government is right on, specifically with their tie to "Infrastructure as Code" (NOTE:  https://www.gov.uk/service-manual/making-software/configuration-management.html#infrastructure-as-code ).  Infrastructure as code is a key principal in being able to manage the relationships between dev, test(s) and production environments.  Drift (NOTE:  http://java.dzone.com/articles/infrastructure-code-when), or the potential for discrepancies between the environments, is a manageable thing, simply by having a high-assurance that each configuration shares the same source definitions (at least a major level, with only minor deltas to accommodate for the actual differences in network and naming configuration).  When combined with a solid release strategy, configuration management can complete the “bill of materials” as a service or product goes through the dev to production delivery processes.

There is a good selection of tools available for solving configuration management problems.  Some are better than others, but the space is evolving rapidly.  Configuration management is a delicate space, and support for the system is essential - both from an external (customer service agreement) and internal (IT-supported) perspective.  Internally the modern enterprise should evangelize the activity and the tools that it supports to ensure that development and operations teams alike get the message.  Configuration management is new enough that it isn’t completely pervasive.

Configuration management, just like software development, is a coding-based skill.  The notion of ‘infrastructure as code’ is just that, treat it like code.  This means that the infrastructure is versioned.  All of the configuration management tools are code-based, some use domain-specific languages (on top of a scripting language) which can require a bit of learning overhead, no different than any technology dependency.  Regardless, proper evaluation is required to ensure that both operations and development staff can develop the configuration, maintain it, and utilize it to configure all environments.

One last point on configuration management: it should be used to baseline configurations, allowing for developers and operators to test changes, evaluating the effects in an automatable way.  In most cases this is a simple branching pattern, that developers should be familiar with.  Because there are skills and experience in play in configuration management that bridge both development and operations it usually gets lumped into the DevOps world.  There’s nothing wrong with this, it is indeed one aspect of DevOps - but an enterprise does not need a DevOp position in order to do configuration management.

### Integrated Development Environments (IDEs)

Many developers rely on an environment that provides a consolidated application for their development activities.  The Android and iOS SDKs, Java, and C++/.NET on Windows still are dominated by IDEs for development.  While there are multiple IDE options for each of these platforms it is in the enterprises best interest to support only one.  While smaller organizations may be able to support a BYOT environment, large scale engineering environments would benefit from the continuity and common documentation

[...]

VMs - Vagrant

[https://www.andrewmunsell.com/blog/development-environments-with-vagrant-and-puppet](https://www.andrewmunsell.com/blog/development-environments-with-vagrant-and-puppet)

[http://markgoodyear.com/2014/03/better-development-environments-with-vagrant/](http://markgoodyear.com/2014/03/better-development-environments-with-vagrant/)

[http://blog.kloudless.com/2013/07/01/automating-development-environments-with-vagrant-and-puppet/](http://blog.kloudless.com/2013/07/01/automating-development-environments-with-vagrant-and-puppet/)

Even MS is in:

[http://msopentech.com/blog/2014/03/31/building-development-environment-vagrant-puppet/](http://msopentech.com/blog/2014/03/31/building-development-environment-vagrant-puppet/)

Containers (Docker)

Container technology is evolving rapidly.

Standardized against what "production" is!  Repeatable.  Deliverable

### The Physical Development Environment

Engineers are special, and good ones are exceptional.  In order to hire, and keep, good talent it is essential that the physical working space accommodate their needs.  In addition, it’s important to make generic information available to engineer’s passively.  Wall mounted monitors are a great tool for this.  Keeping engineers in tune with organizational efforts is also a good way to identify opportunities for collaboration.  While the intent should not be to gamify developer activities, it is possibly to us basic statistics about workflow progress and application performance as a way to incentivize continuous delivery and improvement.  Sandbox resources should also be available - tools for personal experiments and a generic playground for inviting creativity.  

[...]

### The Virtual Development Environment

There are many reasons for a major up-tick in the number of professionals working remotely.  The biggest justification for enterprises is that it is just required to maintain a quality workforce.  Many employees are unwilling to relocate, and are looking for opportunities to commute less.  And in some cases enterprises just have facilities in many geographically distributed areas - or even globally.  From a technical perspective there are very few justifications for having employees in the same physical location.  The biggest reason is for operational security, and protection of the codebase.  Even with virtual private networking capabilities it is very difficult to ensure the security of both the local engineering environment and enterprise services.  In most cases, unless there is critical security, as in National, requirements remote environments are secure enough.

One of the challenges inherent in remote work, is managing inclusiveness.  If one member is remote, while the rest of the team shares a physical office space, it can become very difficult for the remote working to stay engaged, especially as ad-hoc activities are easy for those in the office.  The team, specifically the leadership must work to engage the remote staff at all times.

Another challenge is when any of the team members are spread across timezones.  Scheduling meetings, in particular recurring ones (e.g. daily standups), can become difficult as the most logical time is early or late in the day.  The question becomes "whose day?".

The virtual office isn’t for everyone (NOTE:  http://www.techrepublic.com/blog/10-things/10-signs-that-you-arent-cut-out-to-be-a-telecommuter/ ).  There are many challenges on both sides - but most are personal and cultural.  There are a handful of tools that can help manage the challenges from both sides - first is a central issue/bug tracking system.  Aside from the need to track and collect knowledge on the project itself, the centralized issue tracker serves as a basic time and effort management system.  Effort is one of the greatest factors in the teleworking group dynamic.



"agility." Dictionary.com Unabridged. Random House, Inc. 11 Aug. 2014. <Dictionary.com[ http://dictionary.reference.com/browse/agility](http://dictionary.reference.com/browse/agility)>.



[http://computingcareers.acm.org/?page_id=12](http://computingcareers.acm.org/?page_id=12)

http://nvd.nist.gov/home.cfm

Not sure how to use this article but need to:

[http://fcw.com/Articles/2014/07/07/GitHub-swiss-army-knife.aspx?m=1&Page=4](http://fcw.com/Articles/2014/07/07/GitHub-swiss-army-knife.aspx?m=1&Page=4)
