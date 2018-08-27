# Migrating from MS Access to Java <br />_(with CUBA Platform )_

---

* Migration step-by-step guide could be found [here](https://github.com/dyakonoff/access-to-cuba-migration-samples/wiki).
* Read this article at [github page](https://dyakonoff.github.io/access-to-cuba-migration-samples/) as well.

---

Have you outgrown your MS Access application and so, research options of migrating this application and data to a new platform? This article shows a way of how to migrate from MS Access to Java application based on CUBA Platform.

![migration_map](https://github.com/dyakonoff/access-to-cuba-migration-samples/wiki/images/migration_map.png)

## Why do we need to migrate?

Microsoft Access has been a very popular tool for years, therefore tens of thousands of applications are developed with this technology. This is a nice, rich and easy to use platform to create simple database solutions that are great for individuals or small teams and are used for limited time basis. MS Access gives users simple tools for ad-hoc queries and reporting which let users to get most of the data they need without any help from IT.

Problems arise when Access databases grows beyond the needs of small teams and start catering to more users and departments in the organizations. In such circumstances Access misses:

1. **Web and mobile UI** which are required in most enterprise-level applications and which Access can’t offer.
1. **Scalability**: Access can’t go beyond 2GB per database and [255 concurrent users](https://support.office.com/en-us/article/access-specifications-0cf3c66f-9cf2-4e32-9568-98c1025bb47c).
1. **Reliability and Availability**:  MS Access database, when used by multiple users, is not reliable and is susceptible to data corruption. Also, there is no reliable mechanism for performing database backups as Access requires all active users to terminate their connection before a database backup can be initiated.
1. **Security**: MS Access doesn’t offer a fool-proof role-based security model. A user can easily get around the security model.
1. **Flexibility**: a main approach of extending Access applications uses VBA language, which is somewhat outdated and unpopular.
1. **Integration with external systems and services**: Access uses old-fashioned COM interfaces to talk with external systems. This makes a task of using modern REST web-services quite non-trivial.
1. **Deployment and licensing**: Access requires MS Office to be installed for every user or he/she needs a remote desktop to a Windows Server running Access.
1. **Logging and monitoring**: Access offers quite limited monitoring capabilities. It would be a real challenge if you’d need to integrate Access with something like [Zabbix](https://www.zabbix.com/), [Icinga](https://www.icinga.com/) or [Nagios](https://www.nagios.org/).
1. **Development process**: as the development team grows it is getting harder and harder to collaborate. Such version control systems like git, tfs or mercurial hardly can be used with Access. It’s also not very easy to write unit, functional and integration tests for Access applications.

![dont-let-legacy-eat-you](https://github.com/dyakonoff/access-to-cuba-migration-samples/wiki/images/dont-let-legacy-eat-you.png)

Thus, as application is getting bigger we have no way but to consider a need to migrate it from MS Access  to one of the “real” platforms that are popular in modern IT landscape, migrate to something like Java & Spring, C# &  .NET MVC or even Python &  Django…

Although this migration decision seems natural and could bring a lot of benefits for the business, there is another side of this coin: its cost. Migration by just recreating the same application  from scratch with an enterprise-grade technological stack could require significant time and skills from developers. 

Is there a way to cut the corners, a way to get to the final result faster and with less amount of pain?

## What is CUBA Platform

[CUBA Platform](https://www.cuba-platform.com/) is a RAD tool and an open source [high-level full-stack Java framework](https://www.cuba-platform.com/framework) built with the intention of making enterprise applications development faster and easier. It was built to free programmers from doing chore tasks they have to do on every new project like: Spring configuring, logging, access control, audit, BI integration, REST endpoints, reports, diagrams support, search and many more.. Besides that it offers visual editing and code generation for UI screens, entity classes, middleware beans, DDL and gradle scripts, deployment, DB connections management etc, etc..

As for migration, [CUBA Platform](https://www.cuba-platform.com/) offers a migration tool right out of the box. It comes as a part of [CUBA Studio](https://www.cuba-platform.com/development-tools#cubastudio) - an IDE that accompanies the framework. The migration tool can create an entire application supporting CRUD operations over your data model just out of the given DB tables. The generated application has Java entity classes and browse/edit screens for all the domain objects stored in the DB. Although you’d still have to move over the reports, custom queries and custom UI forms from MS Access manually, you’d get the initial CUBA application with a rich set of capabilities coming with the platform and extendible core architecture developed in less than 10-15 minutes.

![cuba-motto-1](https://github.com/dyakonoff/access-to-cuba-migration-samples/wiki/images/cuba-motto-1.png)

CUBA platform is not just a no-code or a low-code platform that hides everything under the hood and gives you only limited capabilities to modify the behavior or look and feel of the generated application. CUBA application is a regular Java application that uses well known libraries and technologies like Spring, Eclipselink, Vaadin plus the CUBA Platform framework itself to get complex things done simple. Besides the comfort of a RAD approach you, as a developer, get the mighty Java ecosystem supporting all your ideas and not putting you into the Procrustean bed of just one technology so seasoned Java developers could get benefits out of their skills as well as Java-rookies could get huge support from the platform, RAD IDE and smooth learning curve.

![migration-pict_2](https://github.com/dyakonoff/access-to-cuba-migration-samples/wiki/images/migration-pict_2.png)

## Migration

Our travel plan consists of the next steps:

1. Prepare Access DB for migration: change tables, indexes, queries and fields to uppercase and remove special characters or spaces from their names.
1. Move DB structure and data from Access to MS SQL database with SSMA tool.
1. Generate a CUBA application from MS SQL database.
1. Set `@NamePattern` annotations for Java entity classes.
1. Done!

Besides the way above, there is another migration option. It’s possible to create custom database connection in CUBA application and connect to Access DB directly using JDBC driver. Although, this would allow a bit better control over types conversion and wouldn’t require installation of additional tools. This way would require much more coding and making tricky decisions about SQL types, indexes and constraints conversions, data migration or error handling. All of which have been developed and tested for us by Microsoft itself in their SSMA tool already.
So, let’s concentrate on the much simpler way for now and prepare our tool box for the journey of migration.

To follow this plan we need to prepare the next tools:

1. [CUBA Studio](https://www.cuba-platform.com/download), with it’s prerequisite a (Java 1.8 JDK)[http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html].
1. MS Access application.
1. [MS SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-editions-express)
1. [SQL Server Management Studio](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-2017) (SSMS)
1. [SQL Server Migration Assistant for Access](https://www.microsoft.com/en-us/download/details.aspx?id=54255) (SSMA)

Ok, let the migration game begin!

![tools-matter](https://github.com/dyakonoff/access-to-cuba-migration-samples/wiki/images/tools-matter.png)

First, we have to create a brand new Northwind database that will be our test specie. This db can be created either from a template in MS Access or could be downloaded from [here](https://github.com/dyakonoff/access-to-cuba-migration-samples/tree/master/vba).

Next, we need to prepare this database for migration. Although it’s often possible to migrate databases “as is”, the resulting CUBA application code would be cleaner and we wouldn’t need to rename Java classes manually later on if Access db was following the next rules:

1. Names of all tables, fields and indexes are in upper case and don’t contain spaces or other special symbols except latin letters, numbers and underscore.
1. Table names for future entity classes (like Order, Shipper etc) are in **singular** form.

Although it’s possible to do that renaming manually, it would be easier to use [this VBA script](https://github.com/dyakonoff/access-to-cuba-migration-samples/tree/master/vba) that does item #1 automatically. So, let’s use this script and save the prepared Access database to some local folder.

Now, we need to copy the db structure and data to our MS SQL Express server. This task could be easily done with the help from SQL Server MIgration Assistant for Access (SSMA). SSMA wizard makes this task quite simple and straightforward. The only one thing you’d need to change before starting the migration wizard is to change the default type mapping a bit. Because CUBA Platform doesn’t support **byte** or **tinyint** types as a primary key for DB tables, we need to tell SSMA that this type need to be mapped to **int** during the DB migration.

Ok, we are set for generating a CUBA application using [CUBA Studio IDE](https://www.cuba-platform.com/development-tools#cubastudio). To do this open CUBA Studio, create a new product and set up the DB connection parameters on the project properties tab.

![cuba-02-connection-properties](https://github.com/dyakonoff/access-to-cuba-migration-samples/wiki/images/cuba-02-connection-properties.png)

Then, we should use a **Migration Tool** that is a part of CUBA studio and generates the Java application classes, configs and general UI screens for us just out of the given DB schema.

![cuba-05-select-all-tables](https://github.com/dyakonoff/access-to-cuba-migration-samples/wiki/images/cuba-05-select-all-tables.png)

After couple screens, in a matter of a few minutes we have a rich-featured Java web application created for us. It has the domain structure, general UI screens, authentication and audit capabilities as well as all data from the initial northwind Access application.

So, it’s time to run our web application. Just click Run → Start application server in the main menu of CUBA Studio and it will compile the application, start a local web server and deploy application to it having it available at localhost 8080 port.

## Further steps

Of course, [CUBA Platform](https://www.cuba-platform.com/) is not a silver bullet and we’d still have to do some homework to get our CUBA application to the level that would allow it to replace our legacy Access database completely. But CUBA gave us a solid foundation of a functional application with all domain-level objects, ability to do:
CRUD operations, searches, logging, authentication, audit, universal REST API, scheduled tasks and many more from the very beginning.

So, what are the steps that could be done next, after getting the CUBA application up and running?

First, we need to update our UI screens to make them familiar for our users and provide functionality above just plain search, browse and edit fields. And CUBA has perfect tools for this task! We can edit UI layout visually and polish screens up to look similarly to the original screens from the Access application. 

![cuba-gui-screen-editor](https://github.com/dyakonoff/access-to-cuba-migration-samples/wiki/images/cuba-gui-screen-editor.png)

Next, we need to create reports. And again, CUBA Platform comes to the rescue. It has a report engine called [YARG](https://github.com/cuba-platform/yarg) with charts and big number of supported document formats right out of the box. Reports could be designed using templates in MS Office formats, which are familiar to most business users. So besides reports that we could build for them, users can make their own custom ones as they used to do in MS Access.

As for custom business logic required in the app, it can be placed into screen controllers or middleware Java beans just as in any conventional Spring application. Now, after the migration we can easily introduce new features that are common for all Java enterprise applications’ but are hardly available for an Access app. In many cases we won’t need to implement such features from scratch but rather can get them out off the shelf at [CUBA Marketplace](https://www.cuba-platform.com/marketplace).

## Conclusion

It is is quite common situation when a business outgrew an MS Application it uses. In such cases it would be a good idea to migrate this application to a modern enterprise-grade platform. [CUBA Platform](https://www.cuba-platform.com/) offers an appealing way of moving legacy applications like MS Access ones to modern Java stack.

[CUBA Studio](https://www.cuba-platform.com/development-tools#cubastudio) being a part of the platform has built-in [migration tool](https://github.com/cuba-platform/cuba-vision-clinic/wiki) that makes a good chunk of such migration for you and generates a fully-functional Java application with minimum efforts.

In comparison with many other frameworks on the market, CUBA Platform doesn’t leave you alone after just a few first steps on the application development road. It continues helping you on the later stages with many tools available from RAD IDE and the framework such as UI editor, report generating tool and many other modules and components available either out of the box or via CUBA Platform marketplace. On the other hand, CUBA as a framework doesn’t limit developers and allows to handle the applications’ code as just as it was developed with such framework as, for example, Spring from the very beginning.

## Links

1. [MS Access to CUBA migration, step-by-step guide](https://github.com/dyakonoff/access-to-cuba-migration-samples/wiki).
1. [Migrating a Legacy Application to CUBA Platform](https://www.cuba-platform.com/blog/migrate-lightswitch-application-to-cuba).
1. [CUBA Migration Tool](https://github.com/cuba-platform/cuba-vision-clinic/wiki) - a step by step guide for Lightswitch apps migration to CUBA platform.
1. [4 key reasons to migrate from MS Access database](https://www.octalsoft.com/4-key-reasons-migrate-ms-access-database/)
1. CUBA platform: [documentation](https://www.cuba-platform.com/documentation) and [online demo](https://www.cuba-platform.com/online-demo)
1. [YARG report engine](https://github.com/cuba-platform/yarg)
1. [CUBA Marketplace](https://www.cuba-platform.com/marketplace)
