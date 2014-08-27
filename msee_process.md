\newpage

# Process and Methodologies

Agile, blah blah blah

Master planned, but project tuned

Remove the overhead

[Need to address CMMI, and big process methods]

## Supply Chain Management

softwares as raw resources

 

## Technical Debt

## Waterfall

For most software engineers the thought of waterfall-based projects means slow progress, driven by lengthy requirements and design steps - the world of systems engineers.  For some projects this is an inescapable methodology due to delivery and 

## Agile (& Processes Always Evolve) 

## Continuous Delivery

The concept of continuously delivering a product isn’t anything new in the material world.  Demand drives supply, and manufacturing supports the it.  Continuous Delivery (NOTE:  http://continuousdelivery.com/2014/02/visualizations-of-continuous-delivery/) of software in practice isn’t really new, but the formal description of the processes is.  Where continuous integration encapsulates a realtime testing function during the development process, continuous delivery practices pick up and focus on the steps required to move the software under development to a deployable state.  There is also the concept of continuous deployment which causes discourse (NOTE:  http://puppetlabs.com/blog/continuous-delivery-vs-continuous-deployment-whats-diff ) within the community that cares.

![image alt text](image_1.jpg) (NOTE:  http://continuousdelivery.com/wp-content/uploads/2014/02/01_CD_the_idea_low-res.jpg)

(Funny illustration, that highlights many of the key points for Continuous Delivery)

Simply put, continuous deployment is the next step - automating the process of moving every new deployable artifact to the "production" environment.  In many cases this could mean a “dark” side, that isn’t available directly to consumers yet.  The deployments can accumulate, and then have a manual operations step that switches the production environment from “dark” to “light”, exposing all of the changes to the consumer.  As the illustration highlights, it is general a business decision - removed from the developers or even operations to make the changes available.  The notion of continuous deployment is better applied to web-based or even mobile applications than some other kinds of software (e.g. embedded, libraries, and components that conform to a specific release cycle) due to the nature of small changes and live updates on servers.  

Focusing on continuous delivery for a moment, and accepting that the end state is an artifact that is acceptable for deployment.  For most, this will mean that levels of testing beyond unit and integration are required.  Acceptance Testing is the normal process that verifies (are we building the thing *right?*) and validates (are we building the *right* product?) (NOTE:  http://softwaretestingfundamentals.com/verification-vs-validation/ ) during the final tasks of a development phase.  In order to make this stream continuous we need to minimize the amount of human effort injected into these tasks.  It might not be easy to completely automate these tasks, but it also might be hard with the introduction of the appropriate tools.  Validation is the tougher of the two - but in actuality it might not be something that needs to be executed with each change, only to do a final release in terms of deployment.  Verification, while simpler from an automation perspective, essentially is dependent on the test harness to do the verification.  

[Must read: "IT Managers Guide to Continuous Delivery" - [http://go.xebialabs.com/IT-Managers-Guide-to-CD.html](http://go.xebialabs.com/IT-Managers-Guide-to-CD.html)]

A couple of quick points on acceptance testing as an automation step.  Yes, automated testing does require more development.  But, more importantly, once the tests have been written (and proven) they remove the opportunity for human error - specifically from a regression perspective.  If the verification CAN happen during an every-change process, then it is more likely that the quality of the software under development will stay true - or improve, if the test harness is continuously refined as well.  Documentation, in terms of accurately writing the "definition of done" (NOTE:  https://www.scrum.org/Resources/Scrum-Glossary/Definition-of-Done ), is extremely important - especially if it is something that can be used to verify the software functionality in an automated way.  This is a great highlight to the importance of the relationship between tools, processes, and the people that use them.

While outside of the scope of this paper, there are various processes and tools worth mentioning that can be defined for enterprise-wide use that help bridge continuous integration with continuous delivery.  Test-Driven Development (TDD) (NOTE:  http://msdn.microsoft.com/en-us/library/aa730844(v=vs.80).aspx ) and Behaviour-Driven Development (BDD) (NOTE:  http://dannorth.net/introducing-bdd/ ) have gone a long way to improving the quality of both the software under development and the development processes themselves.  The processes and tools help distribute the ownership for quality across all of the functional players.

While silly this BDD example shows how to write executable/testable functional requirements.  It is language independent so the test can be applied to applications of all different runtimes.  

`Feature: Belly`

`  Scenario: a few cukes`

`    Given I have 42 cukes in my belly`

`    When I wait 1 hour`

`    Then my belly should growl`

One potential issue that I want to diffuse quickly - is that achieving continuous delivery isn’t easy, and improving the quality of both the software and the pipeline requires higher organizational IQ.  Yes, there is an investment required to automate functional tests.  Not investing will just create technical and human debt, and without the automation in hand scaling will be painful and costly.  By pushing the testing processes to the front of the lifecycle, quality is embedded into the whole lifecycle, not just a step late in the game.  In addition distributing the responsibility for quality to all of those that touch the solution is the right idea.

One of the paramount aspects to the modern software engineering enterprise is the need to remove the barrier between life-cycle specialists.  Security personnel must be integral to the software design steps - throughout the life of a product or service.  Operations personnel must be involved, early and continuously, working with developers, security, quality assurance to define the requirements from a performance, monitoring and measurement perspective.  Tests and test harnesses require the involvement of all stakeholders, otherwise functional requirements become afterthoughts and thus unmaintainable in a continuous process.

*[**Key point: production/operational requirements, security, delivery, testing, etc. aren’t afterthoughts.  Big engineering firms get it.  IT enterprise project managers don’t.  Need those people involved throughout the development lifecycle.]*

The stream of testing possibilities is fairly limitless.  In many cases lots of different schemes can be run in parallel workflows, reducing the time to final artifact publication.  Performance, penetration, license compliance, target-specific environment, and extended functionality testing can be distributed and managed asynchronously.  It is also possible to external testing - to remote sources (using their APIs) which can help ramp up testing during peak release periods or for new targets.

### Artifact Repositories

Delivery implies that someone transfers something, generally ownership of that something.  Let’s talk through a simple use case, where something is developed in-house and used by multiple development teams downstream.  Independent of the language being used, the development teams need to control their dependencies to prevent transient changes in the composition of their deliverable.  How do they ensure that all developers are working with the same exact configuration?  Most languages have a built-in dependency management tool that is integrated into a build suite.  So they just define the version of the dependency.  But, the build tool needs a centralized location to get the dependency.  Or if the language doesn’t have that capability the developer needs to be able to download it, possible for each target environment where the build happens.  This is also doubly important to ensure that the artifact is indeed the one provided by the true source.  By using a dedicated, and centralized artifact repository each artifact can be signed (rubber stamped as OK) and then consumers can manually or automatically verify the certifier and artifact.

In the landscape of ITIL (NOTE:  http://www.itil-officialsite.com/aboutitil/whatisitil.aspx ) the idea of an artifact repository is defined as the Definitive Software Library (NOTE:  http://itilcollege.com/DefinitiveSoftwareLibraryITIL.html ).  The repository "ensures that only correctly released and authorized versions are in use."  Seems pretty simple.  But, again it is the combination of tools, process and people that make it reality.

The most common example in the developer landscape is Maven which is both a build tool and the centralized repository for Java.  The central repository is organized by a commercial entity which controls the input into the repository - with a basic adjudication of who is allowed to submit artifacts.  This bellybutton-to-push scheme has seemed to work without issue since its inception.  Maven Central’s network of mirrors has done really well to scale and distribute the dependency fetching process for developers all over the world.  There are a handful of open source and commercial repositories for use on-premise, allowing enterprises to proxy Maven Central and store their own artifacts (including support for many languages beyond just Java).

[More juice needed]

### Release Management

While ITIL describes a need to have a dedicated release manager, I’d have to disagree - as this goes directly against the optimal flow of continuous delivery and realistically isn’t scalable.  This isn’t to say that the practice of release management gets eschewed.  Quite the contrary, release management is an integral piece, however in a modern enterprise we need to be able handle this in an automatable, repeatable, and trackable/auditable way.

## Architecture

Underlying any modern software system is a collection of efforts towards defining that system for set of requirements.  

 

Support for usability, extensibility, maintainability, deliverability, testability, and the list goes on o and on.  But, there a few that stand out in the modern environment - most are obvious (NOTE:  http://codesqueeze.com/the-7-software-ilities-you-need-to-know/ ).  Scalability is probably the least understood, even in the modern software engineering world.

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

A group of developers and operators combined their wisdom in a single document as a collection of 12 aspects a modern software applications should cover.

[http://12factor.net](http://12factor.net)

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

It is definitely worth going through the deep dive for each section as the overarching focus in deliverability, scalability and maintainability.

### Mobile

Mobile apps still require infrastructure and a common development environment, and should be treated in the same way as any other architecture - from a process and delivery perspective.  In addition, aside from the mobile platform’s SDKs which are regularly released, there are still dependencies to manage, and a somewhat more constrained development and test environment.

[...]

Each of the app stores has a different processes...automate the delivery to their endpoint.

## Development

### Issue/task tracking

The art (read engineering discipline) of managing requirements, issues and tasks has not been lost completely.  Even as Agile proponents harp against BDUF ("Big Design Up Front"), there has to be some thought, by somebody, into complexity, priority, relationships and architecture.  First, there needs to be a standard, universal location and tool suite for the management of all that.  It is important that as engineers and operators move from project to project, that there is familiarity in the methodology and workflows.

With an issue/task tracking tool in place (JIRA has become the most widely used) teams can collaborate in realtime against requirements that cover the spectrum of ‘ilities’ - security, maintainability, measurability, extensibility, portability, deliverability, etc.

The collection of issues and tasks serve as a documentation base, one that can be prioritized, rewritten or redirected as necessary over the life of the software system.  It provides the history, present and future for the system, in a single location.

### Review and documentation

Many open source projects use a method of gates for managing contributions to the source code base.  Modern source code management (SCM) systems, especially distributed ones (e.g. git) have an inherent staging apparatus where and when code can be reviewed before being applied.  There are also many tools that can be used in conjunction with the SCM system to provide an annotation function to the changes, allowing developers to communicate about them in a self-documenting sort of way.  

#### Code reviews...

There are many reason why code reviews should be required.  Most of which are listed in a great CIO article (NOTE:  http://www.cio.com/article/2431556/developer/5-reasons-for-software-developers-to-do-code-reviews--even-if-you-think-they-re-a-waste-of.html ).  But, the biggest problem, related to the code itself (not the personal or social kind) is that the review will require context.  It is generally very difficult for those not in the know to not just review for "smells" (NOTE:  http://blog.codinghorror.com/code-smells/ ).  Coordinating reviews against the small changes associated with each code commit (pull requests in the world of Git).  With a distributed version control system, and a contribution path that includes a central repository it is possible to integrate a simple “review” step as part of the code submission activity.  Breaking the reviews into easily reviewable chunks can help associate the context.  Note, a code review is not a substitute for a design review - where the implementation plan is to be reviewed.  

The code review should be supplemental to any static or style testing during the build.  In addition, each code review should review the associated tests that verify the change is being testing appropriately.  There are lots of really good ways to ensure time isn’t wasted during reviews (NOTE:  http://java.dzone.com/articles/dont-waste-time-code-reviews ), but the most important thing to remember is that they should be planned, and guided by a team leader.

### Testing

Testing is an infinite subject with regard to software.  Given the dynamic nature of software, any single change could cause a cascade of changes.  Ensuring quality in this environment requires rigorous, and continuous testing - with as little impact of developer efficiency as possible.

It starts with testing as part of the development process, early when requirements are being analyzed, stories written, and with all stakeholders involved in defining the appropriate strategy.

At the root of the testing strategy is a continuous integration (CI) process, which should be used to automate low-level unit and integration tests against the codebase.  Developers should be required to ensure that the CI process is uninterrupted.  Most CI tools have the ability to connect directly to the SCM tool, and kick off the test suite for any change in the code repository.  Developers should have access to this environment to be able to create new build and test "jobs" for anything work in process (against an in-development branch in SCM).

As mentioned above developers should be writing tests as part of their implementation process (ala TDD/BDD).  It is definitely easier for developers to write the unit and integration tests during the process of development.  It is easier for testers and quality assurance folks to write the specifications as part of the requirements process (during incremental cycles) rather than post development.

It is worth noting that increasing the rate of testing per changes does have a few challenges.  Running a continuous integration process for each individual change could be a burden on system resources, or just not realistic from a time-to-test the software perspective.  Because of this it is important for all stakeholders to understand the impact on a serial process, and the benefits of parallelizing the process.  In many cases it is easy to streamline the testing process, splitting up different tests to be run in parallel.  But, this has to be designed into the system and generally requires a automation/workflow engine to handle the tasks appropriately.

### Style compliance

Just as it is important for the enterprise to have a common suite of management tools, ensuring that code and documentation conform to a standard/accepted style and format will create consistency across projects.  While it might seem inconsequential to a given project, it is the overarching level of organizational quality that is truly impacted.  Style guides and documentation requirements can help to ensure the maintainability of software overtime, and provide a "smell" opportunity during reviews and testing - ‘if that piece of code requires that much commenting, it probably can be simplified’.

Style guides can also help enforce the ability to auto-generate documentation (for APIs and SDKs).

"It’s important that everybody on the team participates in creating the style guide so there are no misunderstandings. Everyone has to buy in for it to be effective, and that starts by letting everyone contribute to its creation." (NOTE:  http://www.smashingmagazine.com/2012/10/25/why-coding-style-matters/)

It is possible to test for style during both the SCM process (pushing up changes) and CI (during a build, or packaging process).  There are style tools for just about every language, and it is important to note that each will have its own idioms - but, as a general rule the basic styles should be applicable across each.

## Automation

(scale, speed and human error)

This is probably the single most important concept of this paper.  As the concept gets into the "how to" later in the paper, the ideas will become concrete.

The greatest risk to any software project is all that is unknown.  Developers can only control the decisions they make, and the code and tests they write.  The decisions are made on a state, at a given point in time.  But like everything in the software world - the dependencies, test harness, networks, and operating systems (to include configurations) are all changing to keep up with security and performance requirements.

The only way to ensure that decisions on incorporating external changes are good ones are to continuously test the effect of the changes.  Obviously this can be an ominous effort - given the permutations possible.  By combining Configuration Management (CM) tools and techniques with the typical CI process we can continuously make small modifications to the system loadout, changing an upstream version dependency, and operating system configuration, or changes to the code, run the tests and verify that no regressions are introduced.  But, what if the dependencies are managed centrally, then how do we get the changing artifact into play?  In most cases this a simple request made by a developer to get the artifact into the enterprise’s repository.

In this case, the request should trigger an automated workflow to fetch the remote dependency, validate it’s source and functionality - and possibly run some basic component analysis (does this version have any known vulnerabilities, etc.) and then deploy it to the enterprise repository.  Once the artifact is available the developer can make the build, code, or configuration modifications necessary and run them within an isolated sandbox (detonation chamber) and verify the results.

 

### Test Environments (Stages)

As software grows in complexity so do the test environments.  In some cases the time to run automated tests makes them somewhat inconvenient for developers to use during their development tasks.  While it is generally possible to run a specific test manually, it is still important for developers to get feedback on whether or not their changes created regressions anywhere in the system.  Also, many software systems include UX components, which also take a long time run tests against.  By automating the UX tests, and potentially being able to parallelize the execution of them it is possible to integrate them into a typical CI process - creating better, instant feedback for developers.  The same can be done for security reviews, performance analysis, and any other functional (interfaces to systems) testing. 

The modern software engineering enterprise is one that is equipped to scale out the testing process - to include dynamically creating target environments for testing.  For example, imagine a basic Java application that must be able to run against a specific version of Oracle’s and the Open JDK on MacOSX, Linux and Windows.  It is one thing to be able to handle those environments, but what about all the different versions of the OSes, and different library configurations on each.  By using solid CM practices, development and operations staff can provide configuration templates to development teams for testing these different environments - in parallel, and without human interaction.

The key to all testing is trust and repeatability.  It is extremely important that both the manifest that defines the system-under-test and the results are maintained so that traceability is provided against any change.  It is also important that it is understood that the information isn’t used for blame, but rather for providing both developers and operators with the information needed to continuously improve the software and the delivery of the software over time.  Virtual machine-based environments make this even easier as systems can be snapshotted and archived (in the event they are ever needed in the future).  And if the system configuration is captured appropriately it can be reproduced in local development environments as well.

## Auditing -> Quality Assurance

When I started writing this paper I had ‘Auditing’ as a sub-topic to ‘Development’.  In doing some research on where organizations were moving with the auditing and internal control tasks it became clear to me that this wasn’t a function that can just be related to the engineering process - either dynamically (DevOps) or statically (waterfall).  As mentioned above, oversight is a critical function within an enterprise to ensure the culture, processes and technologies are all aligned.  The oversight task alone creates a special purpose auditing function - where there is a greater requirement for staff to ensure business objectives are met.  The audits are as much about ‘compliance’ as they are about creating an environment for the culture and teams to grow in the right directions.  Evangelism is required, and auditors and QA personnel need to be injected into the development processes continuously to evolve in the same ways.

There is also a need for development and operations staff to assume some of the qualities of the auditing positions.  Monitoring both the delivery systems and processes for opportunities to improve are essential to sharing the culture of change with quality assurance personnel.  From an auditing for quality and process management perspective there are a few key areas that the modern software engineering enterprise must address continuously, and engage all stakeholders with: managing change, control of duties, access control, process (automation) security and general process documentations.

Continuous improvement doesn’t require CMMI (NOTE:  http://www.sei.cmu.edu/cmmi/ ) for enterprises to have a plan.  There are certain enterprises that will have to comply with various industry standards (SOX, etc.) in order to operate.  However, the underlying culture of development and operations should be based on continuous improvement via continuous delivery and direct feedback.  Stringent auditing and exam requirements should preclude continuous delivery cycles either (NOTE:  https://www.brightline.com/2012/12/auditing-devops-developers-with-access-to-production/ ).  This is even more true if the enterprise’s time-to-market windows are short.  Business requirements should drive processes that make sense, and auditing should be a tool to validate processes not impede delivery.

[https://www.brightline.com/2012/12/auditing-devops-developers-with-access-to-production/](https://www.brightline.com/2012/12/auditing-devops-developers-with-access-to-production/)

[http://itrevolution.com/audit-101-for-devops-resource-guide-for-the-phoenix-project-part-3-correctly-scoping-it-using-gait-and-gait-r/](http://itrevolution.com/audit-101-for-devops-resource-guide-for-the-phoenix-project-part-3-correctly-scoping-it-using-gait-and-gait-r/)

[http://www.slideshare.net/SimonStorm1/agile-and-continuous-delivery-for-audits-and-exams-dc-cd-20140528-clean](http://www.slideshare.net/SimonStorm1/agile-and-continuous-delivery-for-audits-and-exams-dc-cd-20140528-clean)

### Change Management

In order for any organization to have confidence in the quality of the products or services there needs to be assurance that changes are managed and tested during all stages of the development and delivery flow.  In some cases external process standards (SOX, FedRAMP, etc.) may dictate how change is actually handled from the identification to delivery.  In these cases auditors may struggle to see how tuning processes is decoupled from product/service changes.

### Separation of Duties

While it appears inconsistent with DevOps mantras and a flat culture, the notion of Separation of Duties is really just to ensure that accountability is applied to the ‘right’ personnel.  Consider the tasks associated with release management, and a processes that requires a human push the final button to do the release.  This one final step ensures that developers can’t get software to ‘production’ without some final approval authority.  This obviously creates a single point of failure, as well as a potential bottleneck for changes.  But, what if you prove the QA processes (tests chains) and can show the manifests for all changes with the artifacts that are moved to production?  It is then possible to automate the release step - moving the accountability to where it belongs (developers and operators) while still having the auditability required.  And, developers still don’t have access to ‘production’, which is managed by the appropriate personnel.

### Separation of Systems

There is no one process for all systems’ requirements.  Within an enterprise, there are many different systems in play, and not all treated the same.  Financial and personnel management systems don’t require the same intensity or even auditing controls as the corporate wiki.  The same can be said for the different pipelines associated with systems under development.  Microservices architectures help here, as service functionality can be decoupled and applied to different operational and auditing environments where necessary.  [Example …]

Network infrastructures become the lowest common denominator quickly.  Just as systems and processes for the engineering workflows require monitoring and auditing, so does the core infrastructure.

### Password and Access Control

While it should go without stating, access control is a critical aspect of any IT operation, including development activities.  Access to source code, test cases, and any documentation must be controlled.  And just because source code may be open source does not mean that it is without control.  

Test servers, network gear and the production pipeline tools all should be monitored from an access perspective.  In addition the access control matrix should be reviewed to ensure that only required personnel have access to required systems.  

As personnel come and go the access control matrix must be continuously revisited.

### CI/CD Automation Security

Test environments that are part of the delivery chain must be guarded, as they contain the enterprise’s gold.  Much like banks use armored vehicles to transport cash and assets, software artifacts must be ensured the same kinds of security.  The systems must be controlled, and any change to them must be tracked and logged appropriately, with notifications to all stakeholders as well.

There are a few tools (NOTE:  https://github.com/claudijd/rotten_apple) popping up that can test the security of the build/test environment, and can be an integral part of the CI environment to ensure that nothing has changed there.  In addition, typical configuration management tools can be used in coordination with container tools to always use clean machines for building - removing the opportunity for tampering.

### Process Review

The modern software engineering enterprise, as it is based on constant change, must be equipped with continuous improvement capabilities across the board.  But this also requires that the quality assurance must be constantly evolving as well.  Process will continue to improve as tooling and practices improve as well.  Quality assurance must create a local culture of improvement and level of efforts to help developers and operators achieve business objectives.

## Logging

Automation for auditing is fed by the generation of logs from all systems and transactions against them - for the pipeline.  Tools can process the logs, keying on specific events that might trigger and notification/further activity from quality assurance staff.  Not only do systems need to generate logs, but transactions between systems need to be monitored as well.

## Legacy

It is extremely difficult to project when an application should go terminal, get replaced, rewritten, maintained, or just let it run.  However, if the development and maintenance teams struggle to implement, or release features and fixes - based on technology in play, it is time to start the decision process.  The enterprise will risk market opportunity, and customer satisfaction by holding on to technical debt too long.

Key point: don’t hang on too long - technical debt (NOTE:  http://www.sei.cmu.edu/community/td2013/program/upload/technicaldebt-icse.pdf ) is a burden on the culture, as well as the bottom line.

[...] 
