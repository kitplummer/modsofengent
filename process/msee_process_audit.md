\newpage

## Auditing -> Quality Assurance

When we started writing this paper we had ‘Auditing’ as a sub-topic to ‘Development’.  In doing some research on where organizations were moving with the auditing and internal control tasks it became clear that this wasn’t a function that can just be related to the engineering process - either dynamically (DevOps) or statically (waterfall).  As mentioned above, oversight is a critical function within an enterprise to ensure the culture, processes and technologies are all aligned.  The oversight task alone creates a special purpose auditing function - where there is a greater requirement for staff to ensure business objectives are met.  The audits are as much about ‘compliance’ as they are about creating an environment for the culture and teams to grow in the right directions.  Evangelism is required, and auditors and QA personnel need to be injected into the development processes continuously to evolve in the same ways.

There is also a need for development and operations staff to assume some of the qualities of the auditing positions.  Monitoring both the delivery systems and processes for opportunities to improve are essential to sharing the culture of change with quality assurance personnel.  From an auditing for quality and process management perspective there are a few key areas that the modern software engineering enterprise must address continuously, and engage all stakeholders with: managing change, control of duties, access control, process (automation) security and general process documentations.

Continuous improvement doesn’t require CMMI[^audit1] for enterprises to have a plan.  There are certain enterprises that will have to comply with various industry standards (SOX, etc.) in order to operate.  However, the underlying culture of development and operations should be based on continuous improvement via continuous delivery and direct feedback.  Stringent auditing and exam requirements should preclude continuous delivery cycles either[^audit2].  This is even more true if the enterprise’s time-to-market windows are short.  Business requirements should drive processes that make sense, and auditing should be a tool to validate processes not impede delivery.

Here's a few useful links relating auditing to DevOps and continuous delivery:

[https://www.brightline.com/2012/12/auditing-devops-developers-with-access-to-production/](https://www.brightline.com/2012/12/auditing-devops-developers-with-access-to-production/)

[http://itrevolution.com/audit-101-for-devops-resource-guide-for-the-phoenix-project-part-3-correctly-scoping-it-using-gait-and-gait-r/](http://itrevolution.com/audit-101-for-devops-resource-guide-for-the-phoenix-project-part-3-correctly-scoping-it-using-gait-and-gait-r/)

[http://www.slideshare.net/SimonStorm1/agile-and-continuous-delivery-for-audits-and-exams-dc-cd-20140528-clean](http://www.slideshare.net/SimonStorm1/agile-and-continuous-delivery-for-audits-and-exams-dc-cd-20140528-clean)

### Change Management

In order for any organization to have confidence in the quality of the products or services there needs to be assurance that changes are managed and tested during all stages of the development and delivery flow.  In some cases external process standards (SOX, FedRAMP, etc.) may dictate how change is actually handled from the identification to delivery.  In these cases auditors may struggle to see how tuning processes is decoupled from product/service changes.

### Separation of Duties

While it appears inconsistent with DevOps mantras and a flat culture, the notion of Separation of Duties is really just to ensure that accountability is applied to the ‘right’ personnel.  Consider the tasks associated with release management, and a processes that requires a human push the final button to do the release.  This one final step ensures that developers can’t get software to ‘production’ without some final approval authority.  This obviously creates a single point of failure, as well as a potential bottleneck for changes.  But, what if you prove the QA processes (tests chains) and can show the manifests for all changes with the artifacts that are moved to production?  It is then possible to automate the release step - moving the accountability to where it belongs (developers and operators) while still having the auditability required.  And, developers still don’t have access to ‘production’, which is managed by the appropriate personnel.

### Separation of Systems

There is no one process for all systems’ requirements.  Within an enterprise, there are many different systems in play, and not all treated the same.  Financial and personnel management systems don’t require the same intensity or even auditing controls as the corporate wiki.  The same can be said for the different pipelines associated with systems under development.  Microservices architectures help here, as service functionality can be decoupled and applied to different operational and auditing environments where necessary.

Network infrastructures become the lowest common denominator quickly.  Just as systems and processes for the engineering workflows require monitoring and auditing, so does the core infrastructure.

### Password and Access Control

While it should go without stating, access control is a critical aspect of any IT operation, including development activities.  Access to source code, test cases, and any documentation must be controlled.  And just because source code may be open source does not mean that it is without control.

Test servers, network gear and the production pipeline tools all should be monitored from an access perspective.  In addition the access control matrix should be reviewed to ensure that only required personnel have access to required systems.

As personnel come and go the access control matrix must be continuously revisited.  If possible the database/documents should be monitored, and any change to the them should be reported to lead personnel.

### CI/CD Automation Security

Test environments that are part of the delivery chain must be guarded, as they contain the enterprise’s gold.  Much like banks use armored vehicles to transport cash and assets, software artifacts must be ensured the same kinds of security.  The systems must be controlled, and any change to them must be tracked and logged appropriately, with notifications to all stakeholders as well.

There are a few tools[^audit3] popping up that can test the security of the build/test environment, and can be an integral part of the CI environment to ensure that nothing has changed there.  In addition, typical configuration management tools can be used in coordination with container tools to always use clean machines for building - removing the opportunity for tampering.

### Process Review

The modern software engineering enterprise, as it is based on constant change, must be equipped with continuous improvement capabilities across the board.  But this also requires that the quality assurance must be constantly evolving as well.  Process will continue to improve as tooling and practices improve as well.  Quality assurance must create a local culture of improvement and level of efforts to help developers and operators achieve business objectives.

## Logging

Automation for auditing is fed by the generation of logs from all systems and transactions against them - for the pipeline.  Tools can process the logs, keying on specific events that might trigger and notification/further activity from quality assurance staff.  Not only do systems need to generate logs, but transactions between systems need to be monitored as well.

## Legacy

It is extremely difficult to project when an application should go terminal, get replaced, rewritten, maintained, or just let it run.  However, if the development and maintenance teams struggle to implement, or release features and fixes - based on technology in play, it is time to start the decision process.  The enterprise will risk market opportunity, and customer satisfaction by holding on to technical debt too long.

Key point: don’t hang on too long[^audit4] - technical debt is a burden on the culture, as well as the bottom line.  It is extremely difficult for developers to maintain currency with languages and tools.  Having to support older technologies adds to the complexities for developers and operations staff.

[^audit1]:[http://www.sei.cmu.edu/cmmi/](http://www.sei.cmu.edu/cmmi/)
[^audit2]:[https://www.brightline.com/2012/12/auditing-devops-developers-with-access-to-production/](https://www.brightline.com/2012/12/auditing-devops-developers-with-access-to-production/)
[^audit3]:[https://github.com/claudijd/rotten_apple](https://github.com/claudijd/rotten_apple)
[^audit4]:[http://www.sei.cmu.edu/community/td2013/program/upload/technicaldebt-icse.pdf](http://www.sei.cmu.edu/community/td2013/program/upload/technicaldebt-icse.pdf)
