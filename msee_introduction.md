\newpage

# Introduction

## Who's This For?

This document was specifically written for technical leaders in the government space.  It has evolved intentionally to be broader reaching, and to incorporate ideals and concepts that should appeal to small and medium-sized businesses as well.  If you are anywhere in the continuum of software - from idea to provider - there is something to take away.

## Introducing

Software IS eating the world [^1].  Software is as pervasive as it gets.  Companies big and small are developing software for themselves and their customers.  But are they keeping up with the times - are they modern software engineering enterprises?

What is a modern software engineering enterprise?  First, it is an organization committed to continuously delivering high quality and secure software products and services.  Second, it is the collection of skills and knowledge that operates the infrastructure, designs systems, implements concepts and architectures, and monitors and maintains the whole using the optimum processes and tools at any given time. In addition, the software engineering enterprise is a measurable, repeatable, continuously improving suite of activities covering the lifecycles of all software-related objectives within and across organizations. To survive, the modern enterprise must be adaptable - flexible to the point of contortion.  It must constantly learn, both from mistakes and successes not only of its own, but of the domain around them.  

Whether your organization delivers software products, develops custom internal apps, or just operates a software infrastructure of services there is a common dependence on upstream software applications, frameworks, libraries and a plethora of formal and informal documentation.  That dependence becomes a critical factor in the operation of any organization, impacting security, budget, performance stability and ability to flex and pivot where and when needed.

The challenge is compounded because software is constantly evolving, at all stages.  Libraries depend on libraries.  Frameworks depend on libraries.  Applications depend on frameworks and libraries and applications.  When any one of the dependencies changes it impacts all downstream software. Further, not only are vulnerabilities important, but so is generic performance.  While we assume that changes upstream are making some kind of improvement, are we sure when softwares are integrated or connected?  

The US government has tried to get its hand around this with the The National Vulnerability Database[^2] (run by the National Institute of Standards and Technology and sponsored by the US Department of Homeland Security), a dynamic collection of reported software vulnerabilities, identifies the issues and relationships - to an extent.  It is generally a catalog of "known" vulnerabilities, meaning only those that are reported to NIST and it is massive, but lacking and extremely difficult to fully utilize.  

The speed at which software is changing also creates a massive scope challenge.  The days of software components, SDKs and the like being released on long-term schedules (e.g. years and quarters) has long passed.  Today softwares are released weekly, monthly, or at every change - in real-time.  The need to release functionality to users, from a business perspective, combined with the vulnerability/security dilemma has created a storm of change, as far upstream as imaginable too.  The permutations are exponential.  [Sure, we are growing comfortable with offloading responsibility, opting into cloud-based/web services whenever possible.  Is it possible for an organization to be completely void of consuming and operating any software?  Probably not.  And, the focus of this paper is the organizations who produce software - for either internal or external consumers.]

The modern software engineering enterprise is one that is capable of proactively managing the change inherent in software.  Change management isn’t what it used to be[^3]. Software engineering has come quite the ways in the past 5 years too.

"Software engineering focuses on software development and goes beyond programming to include such things as eliciting customers’ requirements, and designing and testing software."[^4] The ACM’s definition here does little to recognize the importance of the delivery process (including the management of dependencies) or operations’ requirements.  So we’ll bring these aspects into the modern “enterprise”.

[^1]: [http://online.wsj.com/news/articles/SB10001424053111903480904576512250915629460](http://online.wsj.com/news/articles/SB10001424053111903480904576512250915629460)
[^2]: [http://nvd.nist.gov/home.cfm](http://nvd.nist.gov/home.cfm)
[^3]: [http://www.drdobbs.com/software-change-management/184415707](http://www.drdobbs.com/software-change-management/184415707)
[^4]: [http://computingcareers.acm.org/?page_id=12](http://computingcareers.acm.org/?page_id=12)
