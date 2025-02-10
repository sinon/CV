#import "conf.typ": resume, role, education

#show: resume.with(
  author: "Rob Hand",
  location: "London, UK",
  email: "rob.h.1988@gmail.com",
  github: "github.com/sinon",
  linkedin: "linkedin.com/in/robhand",
  personal-site: "sinon.github.io",
  accent-color: "#26428b",
  author-position: left,
  personal-info-position: left,
)

== Work Experience

#role(
  title: "Staff Software Engineer",
  location: "London, UK",
  company: "Marks & Spencer",
  dates: "June 2023 " + $dash.em$ + " Present"
)
- Architected and developed a multi-channel personalized marketing campaign management system, enhancing customer engagement.
- Spearheaded service modernization, improving system stability and reducing production defects.
- Redesigned content personalization services to integrate with a Federated GraphQL architecture, increasing scalability.

_*Technology:*_ Python, aiohttp, Terraform, Github Actions, FastAPI, Azure, PostgreSQL, GraphQL, MongoDB, Docker, Kafka, Redis

#role(
  title: "Engineering Manager / Tech Lead",
  location: "London, UK",
  company: "Globality Inc.",
  dates: "Feb 2022 " + $dash.em$ + " May 2023"
)
- Led and mentored a team of seven engineers, driving professional growth, performance, and job satisfaction.
- Delivered complex projects on time with high quality, ensuring business objectives were met efficiently.
- Optimized engineering processes, such as transitioning the team to a Kanban workflow, significantly improving delivery speed and quality.
- Collaborated with engineering leadership to implement department-wide process enhancements.

_*Technology:*_ Flask, FastAPI, AWS, SNS/SQS, RDS, Kubernetes, Helm, Docker, SQLAlchemy, PostgreSQL, GraphQL, Drone, Harness

#role(
  title: "Staff Software Engineer / Tech Lead",
  location: "London, UK",
  company: "Globality Inc.",
  dates: "Feb 2021 " + $dash.em$ + " Feb 2022"
)
- Drove adoption of enhanced error monitoring tools, reducing issue resolution times from days to minutes.
- Led architectural design for bulk document export, streamlining manual processes into a seamless automated experience.

#role(
  title: "Senior Software Engineer II",
  location: "London, UK",
  company: "Globality Inc.",
  dates: "Oct 2019 " + $dash.em$ + " Feb 2021"
)
- Founding engineer on the first Globality engineering team based in London. Worked closely with my manager to help define the culture and values of the London engineering department. Many of the improvements we enacted were adopted in the wider engineering department.
- Led the architectural redesign and rebuild of our user facing reporting feature. Resolving many data reliablity issues.

#role(
  title: "Senior Software Engineer",
  location: "London, UK",
  company: "eporta (acquired by Shopify)",
  dates: "Dec 2017 " + $dash.em$ + " Oct 2019"
)
- Developed an AI-driven image recognition tool PoC, automating furniture classification and reducing manual effort.
- Revamped the onboarding process, streamlining user sign-up and activation.
- Redesigned the quoting and ordering system, significantly enhancing user experience.
- Prototyped, user-tested and implemented a new project management tool, enabling interior designers to better manage their projects.

*_Technology:_* Django, AWS, Django Rest Framework, PostgreSQL, Kinesis, Redshift, Docker, CircleCI, AWS Lambda, Celery

#role(
  title: "Senior Software Engineer - BE Team Lead",
  location: "London, UK",
  company: "Tictrac",
  dates: "Aug 2012 " + $dash.em$ + " Dec 2017"
)
- Led the backend engineering team, mentoring junior developers and conducting performance reviews, along with defining the technical backlog for the team.
- Owned technical design and project execution for key features of Tictrac’s white-label health and wellness platform.

*_Technology:_* Python, AWS, Django, Django Rest Framework, PostgreSQL, Docker, Kubernetes, Celery

== Skills
- *Programming Languages*: Python, Rust, Typescript/Javascript, HTML/CSS, Bash
- *Frameworks & Libraries*: Django, FastAPI, Flask, Django Rest Framework, GraphQL
- *Cloud & DevOps*: AWS, Azure, Kubernetes, Docker, Terraform, Helm
- *Database & Data Infrastructure*: PostgreSQL, MongoDB, Kinesis, Kafka, Kinesis, Redshift, SQS, SNS, Redshift, Redis
- *CI/CD & Automation*: Github Actions, Drone, Harness, CircleCI

== Education
#education(
  institution: "Dublin City University",
  location: "Dublin, Republic of Ireland",
  dates: "2006 " + $dash.em$ + " 2011",
  degree: "Bachelor's of Science, Computer Applications (Software Engineering)",
)
