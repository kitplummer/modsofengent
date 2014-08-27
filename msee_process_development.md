\newpage

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
