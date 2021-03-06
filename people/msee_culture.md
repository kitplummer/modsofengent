\newpage

# Culture of Change, People!

Change is hard.  But, it must be controlled, proactively, in order for any enterprise to be able to manage against it.  Deep dependencies and concrete processes can cripple an organization as requirements and inputs change upstream.

Diversity is complex.  However diversity is the attribute that can help an organization’s culture towards not only being change tolerant, but change-driven.  It is extremely critical that the culture stay diverse, open and willing to share knowledge and experience, and not inflexible to operating boundaries.  While diversity is good, this does not imply that functions within the organization can avoid specialization and a learning path required to master any given domain.  Also while diversity does imply breadth the distribution of an organizations skills can not be applied serially or in sequence - which create intermediate walls and barriers for progress.  While a matrix organizational[^culture1] design can help, it isn’t necessarily the only answer.  The most important ideal is that the right collection of skills are applied at the appropriate times - and not just for the sake of diversity.

## Software is Never Complete (Sort of)

While Fred Brooks, of The Mythical Man-Month fame, opined that software should only change up to a point otherwise it will never be finished[^culture2] and that code freezes are a must, it is difficult to apply this thought across the board to modern software.  This is even more true given the shift to components and frameworks where dependencies are more externalized - and constantly changing as well.  That said, it isn’t difficult to imagine libraries whose functionality is solidified to the point where there is no more change possible.  Also, it is possible for applications to be retired, or intentionally have a short/specified lifetime.  In fact, the notion that applications should be shelved when their cost to operate exceeds their usefulness, or cost to re-implement with modern tools and methods should be acceptable.  The ability to manage against these types of change requires an inherent acceptance of change, from the top leadership layers to development and operations teams.

The 'sort of' in the header is really a key aspect to continuous delivery.  While software and its dependencies are always susceptible to change, this doesn't mean that it can't be stable.  The rate of change can also be managed; it is always necessary to continuously deliver against any change.  In addition, it is quite possible that code may be frozen, or even put into a legacy/archived state where no more maintenance or feature development is being done.

## Open

In order for quality to run through as a core value of all software and engineering projects in an enterprise they should be transparent.  Having projects in a "shared" version control system allows for “social coding” where security requirements allow, it is best - also for knowledge-sharing - that project’s source code be discoverable, and reviewable by all in the enterprise.  In cases where it isn’t permissible for security reasons - as much of the code base should be managed in an up-stream dependency pattern (just like external dependencies) in order to optimize the potential for collaboration across projects.  

It is a growing trend that enterprises also contribute open source pieces of their projects, in order to garner a greater community effort into the development and save development times and funds.  There are overhead costs to this, so the impact on the enterprise and projects should be reviewed - beyond just intellectual property concerns.  This is a topic that goes beyond the scope of this paper, but it is relevant to both the culture and processes of a modern environment.

Adding the social aspect to the life of code is also useful in an enterprise.  Aside from the obvious reuse and collaboration potential, the projects could be used for HR and personnel reviews, and training and knowledge sharing purposes.  Skill sets can be gleaned from contributions, identifying opportunities for future projects or even mentorship. Code as reputation[^culture3], or the notion that an open environment will motivate, and reward individuals for their contributions makes a lot of sense - proven by the power of Github.com a central repository for open sources.

Open communications seems like an obvious attribute within any enterprise.  But, it isn’t just about open doors, and open spaces.  While open communication is extremely important for any environment where change is prevalent, software teams need a channel for communication that persists the dialog, and makes sharing ideas, and asking questions barrier-free.  The benefit is that is both passive and active, especially if team members are geographically separated.  A dialog can take place in real-time, and then other team members can contribute when they are available.  In order to avoid too much noise, different channels can be used for different topics/subjects (ala old-fashioned IRC or chat).  

Another benefit is that IT systems can now self-report into these chat channels providing data about the automation infrastructure (e.g. the state of the last build on a commit/change) which then can be discussed, or managed appropriately.  It is also possible to integrate project management tools, enabling the teams to get notifications of workflow state changes, or task assignments.  The transparent nature of this model is an improvement over email in that the team(s) can have a easy awareness about the overall operation of things within their purview. In short, open communications is a key part of developing and maintaining modern software: in fact it might be the first Axiom.  

In addition to group communication, and somewhat dependent on the size of the enterprise a social feed is extremely useful in creating relationships, based on a context of interest, across teams and possibly across organizations.  This is especially useful in enterprises that bridge many geographic areas and cultures.  Having a "Twitter"-like feed can help openly permeate ideas, new technologies and provide a platform for emergent innovation[^culture4].

Once teams and individuals operate in a more open environment, based on transparency of the project’s code base and persisted communications channels - the level of knowledge sharing grows continuously.

## Knowledge Sharing

It is much easier to talk about knowledge sharing than it is to have a culture that subscribes to it.  This is caused by everything from personalities to job security.  However, an enterprise that evolves process and tools, will grow the culture in the direction that it requires.  It really starts with a social-centric source code repository tool set - all Github.com.  While Github is one example, there a handful of options available for intra-enterprise use.  By removing the barrier to entry for contributions - even if outside the project’s own development team - the enterprise establishes a "search-first" environment.  By opening this door the enterprise can also prevent tribal knowledge where certain projects hoard - intentionally or otherwise.

Brown-bags, book studies, hosting meet-ups, and tech-sharing conferences all can serve to help distribute knowledge through the organization.  Getting junior staff involved in the general knowledge sharing culture, by presenting on their learning process removes inhibition and helps create an accepting environment.

The idea of knowledge sharing isn’t without issue.  In most cases it is the tools at the root of these issues[^culture5] rather than the concept itself.  The challenge becomes one where pockets of knowledge can be created, and technologies and practices are complex enough where it doesn’t make sense to share.  Enterprises have a tendency to want to create "areas of expertise" or “communities of practice” which attempt to create opportunities for knowledge sharing, but end up just constraining and walling off (e.g., cylinders of excellence and ignorance) the reach of the knowledge.

A practical method for sharing knowledge has been to fund community managers and mavens to help govern, curate and move software conversations along. These people tend to be the bridge from the developer level to the larger IT enterprise vision. But to be clear these people are not in charge of a given community but are facilitators (and coders in their own right), usually nominated by the communities themselves.

One challenge for enterprises is creating an environment that isn’t about squeezing out individual knowledge, or appearing to be an intellectual property blackhole.  One way to manage this is to enable engineers to be more open, sharing publicly via blog posts and big-community contributions.  Therefore the individual’s effort is as much about self-marketing (internally and externally) as it is about sharing.

It also should go without saying, but needs to be drilled home: modern software is  evolving the enterprise into a continually learning machine. All resources should be tuned to deliver this maximum effect.

## Polyglot yet Mastery
One of the big cultural challenges, with regard to making software inside an enterprise, is the continuous evolution of languages and frameworks/domain-specific languages.  While Java, at the least the Java Virtual Machine (JVM) still has a stranglehold on enterprise development, there are many new options, and new directions for developing and operating around the JVM.  The rise of virtual machines and cloud resources has also brought to the table a desire for many developers have access to modern languages.  Falling out of the startup space, there is also a shift for developers, architects and operators to choose the right tool for the job - moving away from the traditional square-peg round-hole problem.  Developers are quickly faced with polyglot[^culture6] environments.  And the "right tool"[^culture7] becomes an unwinnable chase.  The most important aspect is that the organization have the ability to shift, when it needs too, and via solid decision making.  While we can't avoid polyglot enterprises, we can still provide the opportunity to master - more like optimize.

It is probably impossible to decouple organizations from the "shop" mentality - as they are unable to throw away investment with ease.  But, as with all culture, diversity is powerful and tends to breed creativity.  It is important that as projects rotate, or when new project go through the architecture and design reviews - that leadership take opportunities to look at new technologies, or options available in languages outside of the internal skillset.

Specialists are still required.  Each layer is too complex and too dynamic for individuals or organizations to distribute across functional layers.  Expertise is still required to optimize any layer.  Full-stack developers, it’s a really small pool, and somewhat of a farce.  As mentioned above, the complexity of each layer in the stack - at some point, and most likely towards production - will extend beyond the expertise a full-stacker would have in it.

Example:
Consider the layers in a stack of anything beyond a super simple web application.  Starting at the bottom - you have at least one data store, and likely more than one type (e.g. relational for records, document-oriented for metrics, and possible key-value for configuration).  Next is probably some kind of messaging/asynchronous processor, followed by the generic application layer.  The top, or front-end is another, where there may multiple types - each requiring it's own language (e.g. web, mobile, etc.).  There are so many disparate technologies there, that would prevent anyone from being an expert in all of them.

All team members must share a common understanding of operational requirements - and must be able to communicate across the matrix.  So, even if not an expert some awareness of the different technologies and languages is beneficial.

## DevOps
All enterprises are software enterprises now.  It’s the nature of the world we live in.  This isn’t to be confused with traditional information technology (IT) functions either.

DevOps is, simply, the cross-pollination of developer and operations skills, within a central culture that removes the barriers between the traditionally separate groups.  The longer winded definition[^culture8] is nuanced and openly debated still.

The key takeaway is basic: it IS really important for different roles to collaborate to arrive at a common understanding, or system architecture.  Developers must understand operational requirements.  Operators and system administrators must understand security and policy requirements.  And that common understanding requires input from everyone in the engineering to operations continuum (and the consumer or user).

There are a few enterprise practices that are generally missing from the DevOps conversation, but can't be avoided: security and quality assurance.  As long as these stakeholders are involved in the development processes, along with operations at an early stage, and then continuously through production then DevOps is an achievable thing.  

DevOps usually has connotations for automation, metrics and monitoring, and the delivery practice.  While they fit, they can be decoupled - an enterprise doesn't need a DevOps position to incorporate all of the espoused goodness.

Culture must be paired with processes and methods that enable, yet control change.  Without an infrastructure of flexibility, technical debt will amass.  The process for change must be understood, and not encumbered by personal or organizational intelligence.

[^culture1]:[http://education-portal.com/academy/lesson/matrix-organizational-structure-advantages-disadvantages-examples.html#lesson](http://education-portal.com/academy/lesson/matrix-organizational-structure-advantages-disadvantages-examples.html#lesson)
[^culture2]:[http://en.wikipedia.org/wiki/The_Mythical_Man-Month#Code_freeze_and_system_versioning](http://en.wikipedia.org/wiki/The_Mythical_Man-Month#Code_freeze_and_system_versioning)
[^culture3]:[https://www.cs.cmu.edu/~xia/resources/Documents/cscw2012_Github-paper-FinalVersion-1.pdf](https://www.cs.cmu.edu/~xia/resources/Documents/cscw2012_Github-paper-FinalVersion-1.pdf)
[^culture4]:[http://www.cloudave.com/493/six-factors-in-emergent-innovation/](http://www.cloudave.com/493/six-factors-in-emergent-innovation/)
[^culture5]:[http://www.jarche.com/2013/03/the-knowledge-sharing-paradox/](http://www.jarche.com/2013/03/the-knowledge-sharing-paradox/)
[^culture6]:[http://techcrunch.com/2014/07/10/our-polyglot-nightmare/](http://techcrunch.com/2014/07/10/our-polyglot-nightmare/)
[^culture7]:[http://jondavidjohn.com/where-polyglot-programming-goes-awry/](http://jondavidjohn.com/where-polyglot-programming-goes-awry/)
[^culture8]:[http://theagileadmin.com/what-is-devops/](http://theagileadmin.com/what-is-devops/)
