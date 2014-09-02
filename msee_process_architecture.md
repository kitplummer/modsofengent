\newpage

## Architecture

Underlying any modern software system is a collection of efforts towards defining that system for set of requirements. Modern systems must be architected in the same way as traditional systems, from a process perspective.  However, the landscape had changed - and we are wiser.  Complexity[^process_architecture1] is biggest risk to a system.  The greatest aspect of Agile is the desire to deliver only what is of value, constantly re-evaluting what is the greatest priority.  From an architectural perspective the system under development must allow for that to happen.  This isn't without challenge.  Technology decisions must be made early, sending the project in a direction.  By managing from a complexity perspective teams can often avoid bad directions early.

Support for usability, extensibility, maintainability, deliverability, testability, and the list goes on and on.  But, there a few that stand out in the modern environment - most are obvious[^process_architecture2].  Scalability is probably the least understood, even in the modern software engineering world.  But, scalability is the one that translates to quality customer services at the most efficient/economic effort.  As the focus of the modern engineering enterprise is delivery - deliverability is a key parameter and must be applicable to any software pipelined through the organization.  One that seems to be missing is monitorability.  Software systems must be designed and developed with the appropriate instrumentation hooks, that allow for monitoring.

The biggest enabler for the modern enterprise is a shift towards modern architecture and tools.  While the cloud has created various opportunities for deferring data center costs, it really hasn’t affected software architecture as much as one would think.  While new technologies like map-reduce (Hadoop) and NoSQL databases (Mongo, Cassandra, Couch, etc.) are designed for distribution across an enterprise (public, private or hybrid) they don’t necessarily apply to the standard of enterprise applications and services.  In addition, the evolution of Platform as a Service (PaaS) has yet to really be scaled to a point where it is readily available for on-premise operations.  There is definitely effort to make this happen, and to support the continuous delivery methods espoused in this paper.

### The Modern Software Architect

There used to exist a standard path of career progression in the software and IT industries.  One started as a developer or an administrator, and progressed into an analyst role.  From there, one would progress into either a management role, or an architect.  Architects are created by progression, rather than trained academically or otherwise.  It used to be that an architect was a specialist in some layer of the technology stack, or a generalist aware of the enterprise’s infrastructure and business requirements.  Today, thanks in large part of the adoption of Agile methods, architects have become torchbearers for business objectives and entrepreneurial spirit.

Not only are architects responsible for decision processes, system requirements, technology awareness, and coordinating effort, but also market opportunities, business constraints, customer service and satisfaction, security and quality, and delivery pipelines.  The modern software architect is integral to enabling the modern enterprise with the skills and abilities required to operate continuously.

Monitoring of trends is probably one of the most important tasks of any modern architect.  This applies to both operational and industry/upstream trends.  Architects need to be very attuned to the production environment, ensuring that representative tests and requirements are driven down to development teams.  Architects need to also be aware of the complexities associated with the deployment and release processes, to ensure that services and artifacts can be continuously made available.

Having a sense of where industry is going isn’t the easiest thing to do - technologies are coming and going at a remarkably fast rate.  However, it isn’t hard to get a feel for the general direction of things, specifically high-level trends (e.g. NoSQL, containerization, web frameworks).  Architects must constantly apply both of these kinds of trends to the products and services which they are associated with - with high regard for technical debt opportunities.

### Monolithic versus Microservices

One of the most active discussions in the architectural space is that of microservices versus monolithic applications.  While services are not anything new - with Service-Oriented Architecture (SOA) filling the enterprise scene in the mid-to-late 2000’s - the notion has gained great momentum, rolling with the rising tide of cloud computing.  Where SOA focused on heterogeneous and enterprise-wide services orchestrated together to complete business transactions, microservices are smaller software components that are derived from a single application and run as discrete processes.  Microservices aren’t to be confused with modular applications (which is a similar but different discussion).  Monolithic applications on the other hand are somewhat a recourse from the fallout of the SOA storm, where applications are encapsulated in a single, transportable unit and deployed to an application server (environment).  Within the encapsulation that applications includes the multiple user interfaces, business logic and the data structures/models.  Microservices are interesting as they help break down the complexity of applications, naturally towards atomic units with concrete interfaces.  This allows for greater reusability and scalability - as well as much simpler for development, testing and delivery.  From an architectural perspective more work is required early in the topology for microservices, but then more freedom is available for developers to optimize on tool/language, library and framework decisions.  This freedom is the key attribute with regard to continuous delivery moving forward.

One of the most important aspects in an architecture is the role and requirement for network interconnectivity - something that is very difficult to control, though easy to monitor.  Regardless of the application architecture, the connectivity requirements must be well understood and channeled as requirements so that all stakeholders can understand the operation impact of early design decisions.

Here’s a few links on the discussion:

[http://martinfowler.com/articles/microservices.html#AreMicroservicesTheFuture](http://martinfowler.com/articles/microservices.html#AreMicroservicesTheFuture)

[http://microservices.io/patterns/microservices.html](http://microservices.io/patterns/microservices.html)

[http://highscalability.com/blog/2014/4/8/microservices-not-a-free-lunch.html](http://highscalability.com/blog/2014/4/8/microservices-not-a-free-lunch.html)

[http://highscalability.com/blog/2014/7/28/the-great-microservices-vs-monolithic-apps-twitter-melee.html](http://highscalability.com/blog/2014/7/28/the-great-microservices-vs-monolithic-apps-twitter-melee.html)

[http://www.chrisstucchio.com/blog/2014/microservices_for_the_grumpy_neckbeard.html](http://www.chrisstucchio.com/blog/2014/microservices_for_the_grumpy_neckbeard.html)

### 12-Factor

One of the challenges with a shift in architectures, or even simple proofs of concepts, is the need to understand why the patterns are patterns, and how conventions are installed.  With a return to a services-centric mindset many architects and developers are looking for ways to 'checklist' their applications against the modern standards.  Operators are wondering if the evolution of the data center and cloud services is being recognized as requirements in new developments.

A group of developers and operators combined their wisdom in a single document as a collection of 12 aspects a modern software applications should cover[^process_architecture3].

The 12 factors are:

1. Codebase - one codebase tracked in revision control, many deploys

2. Dependencies - explicitly declare and isolate dependencies

3. Config - store config in the environment

4. Backing Services - treat backing services as attached resources

5. Build, release, run - strictly separate build and run stages

6. Processes - execute the app as one or more stateless processes

7. Port binding - export services via port binding

8. Concurrency - scale out via the process model

9. Disposability - maximize robustness with fast startup and graceful shutdown

10. Dev/prod parity - keep development, staging, and production as similar as possible

11. Logs - treat logs as event streams

12. Admin processes - run admin/management tasks as one-off processes

It is definitely worth going through the deep dive for each section on the 12-Factors site as the overarching focus covers deliverability, scalability and monitorability.

### Mobile

Mobile apps still require infrastructure and a common development environment, and should be treated in the same way as any other architecture - from a process and delivery perspective.  In addition, aside from the mobile platform’s SDKs which are regularly released, there are still dependencies to manage, and a somewhat more constrained development and test environment.

[...]

Each of the app stores has a different processes...automate the delivery to their endpoint.

[^process_architecture1]:[http://alarmingdevelopment.org/?p=893](http://alarmingdevelopment.org/?p=893)
[^process_architecture2]:[http://codesqueeze.com/the-7-software-ilities-you-need-to-know/](http://codesqueeze.com/the-7-software-ilities-you-need-to-know/)
[^process_architecture3]:[http://12factor.net](http://12factor.net)
