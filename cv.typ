#import "@preview/scienceicons:0.0.6": orcid-icon

#let resume(
  author: "",
  author-position: left,
  personal-info-position: left,
  pronouns: "",
  location: "",
  email: "",
  github: "",
  linkedin: "",
  phone: "",
  personal-site: "",
  orcid: "",
  accent-color: "#000000",
  font: "New Computer Modern",
  paper: "us-letter",
  body,
) = {

  // Sets document metadata
  set document(author: author, title: author)

  // Document-wide formatting, including font and margins
  set text(
    // LaTeX style font
    font: font,
    size: 9.5pt,
    lang: "en",
    ligatures: false
  )

  // Reccomended to have 0.5in margin on all sides
  set page(
    margin: (0.5in),
    paper: paper,
  )

  // Link styles
  show link: underline


  // Small caps for section titles
  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  // Accent Color Styling
  show heading: set text(
    fill: rgb(accent-color),
  )

  show link: set text(
    fill: rgb(accent-color),
  )

  // Name will be aligned left, bold and big
  show heading.where(level: 1): it => [
    #set align(author-position)
    #set text(
      weight: 700,
      size: 20pt,
    )
    #pad(it.body)
  ]

  // Level 1 Heading
  [= #(author)]

  // Personal Info Helper
  let contact-item(value, prefix: "", link-type: "") = {
    if value != "" {
      if link-type != "" {
        link(link-type + value)[#(prefix + value)]
      } else {
        value
      }
    }
  }

  // Personal Info
  pad(
    top: 0.25em,
    align(personal-info-position)[
      #{
        let items = (
          contact-item(pronouns),
          contact-item(phone),
          contact-item(location),
          contact-item(email, link-type: "mailto:"),
          contact-item(github, link-type: "https://"),
          contact-item(linkedin, link-type: "https://"),
          contact-item(personal-site, link-type: "https://"),
        )
        items.filter(x => x != none).join("  |  ")
      }
    ],
  )

  // Main body.
  set par(justify: true)

  body
}

// Generic two by two component for resume
#let generic-two-by-two(
  top-left: "",
  top-right: "",
  bottom-left: "",
  bottom-right: "",
) = {
  [
    #top-left #h(1fr) #top-right \
    #bottom-left #h(1fr) #bottom-right
  ]
}

// Generic one by two component for resume
#let generic-one-by-two(
  left: "",
  right: "",
) = {
  [
    #left #h(1fr) #right
  ]
}

// Cannot just use normal --- ligature becuase ligatures are disabled for good reasons
#let dates-helper(
  start-date: "",
  end-date: "",
) = {
  start-date + " " + $dash.em$ + " " + end-date
}

// Section components below
#let edu(
  institution: "",
  dates: "",
  degree: "",
  gpa: "",
  location: "",
) = {
  generic-two-by-two(
    top-left: strong(institution),
    top-right: location,
    bottom-left: emph(degree),
    bottom-right: emph(dates),
  )
}

#let work(
  title: "",
  dates: "",
  company: "",
  location: "",
) = {
  generic-two-by-two(
    top-left: strong(title),
    top-right: dates,
    bottom-left: company,
    bottom-right: emph(location),
  )
}


#let name = "Rob Hand"
#let location = "London, UK"
#let email = "rob.h.1988@gmail.com"
#let github = "github.com/sinon"
#let linkedin = "linkedin.com/in/robhand"
#let personal-site = "sinon.github.io/"

#let override = {
  set text(
    // LaTeX style font
    size: 8pt,
    lang: "en",
    // Disable ligatures so ATS systems do not get confused when parsing fonts.
    ligatures: false
  )
}

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "a4",
  author-position: left,
  personal-info-position: left,
)



== Work Experience

#work(
  title: "Staff Software Engineer",
  location: "London, UK",
  company: "Marks & Spencer",
  dates: dates-helper(start-date: "June 2023", end-date: "Present"),
)
- Led the design and implementation of tooling for managing multi-channel personalised marketing campaigns on M&S.
- Delivered a program of work to modernise the services our team was responsible for. Leading to increased stability and fewer bugs escaping to user-facing environments.
- Rebuilding our content personalisation service to work within a GraphQL Federated system design. 

_*Technology:*_ Python, aiohttp, FastAPI, Azure, PostgreSQL, GraphQL, MongoDB, Docker


#work(
  title: "Engineering Manager / Tech Lead",
  location: "London, UK",
  company: "Globality Inc.",
  dates: dates-helper(start-date: "Feb 2022", end-date: "May 2023"),
)
- Leading a team of 7 engineers. Responsible for their mentorship, growth, performance evaluation and job satisfaction.
- Delivered various complex projects on time and to a high quality.
- Led continuous process improvement, optimising for impact & delivery for example moved the team to a Kanban based system which improved project delivery time & quality.
- Collaborated with the engineering leadership group to deliver department-wide process improvements.

_*Technology:*_ Flask (microcosm), FastAPI, AWS, SNS/SQS, RDS, Kubernetes, Helm, Docker, SQLAlchemy, PostgreSQL

#work(
  title: "Staff Software Engineer / Tech Lead",
  location: "London, UK",
  company: "Globality Inc.",
  dates: dates-helper(start-date: "Feb 2021", end-date: "Feb 2022"),
)
- Drove the implementation and adoption of improved error reporting and observability tooling across the organization, which reduced notification times from days to minutes and enabled engineers to pro-actively resolve errors.
- Led the architectural design and implementation of a feature to bulk export all supporting documentation for a given project, turning a manual process that could take a user hours into a simple & delightful experience.

#work(
  title: "Senior Software Engineer II",
  location: "London, UK",
  company: "Globality Inc.",
  dates: dates-helper(start-date: "Oct 2019", end-date: "Feb 2021"),
)
- Founding engineer on the first Globality engineering team based in London. Worked closely with my manager to help define the culture and values of the London engineering department. Many of the improvements we enacted were adopted in the wider engineering department.
- Led the architectural design and rebuild of our user facing reporting feature.

#work(
  title: "Senior Software Engineer",
  location: "London, UK",
  company: "eporta (acquired by Shopify)",
  dates: dates-helper(start-date: "Dec 2017", end-date: "Oct 2019"),
)
- Designed and implemented a PoC image recognition tool for categorizing the type and style of furniture present in a given photo, to automate an expensive manual process.
- Led the rebuilding of the onboarding flow, to allow an easier sign-up process.
- Led a complete rebuild & redesign of the entire quoting and ordering flow on the site.
- Prototyped, user-tested and implemented a new project management tool so that interior designers could manage more of their project on platform.

*_Technology:_* Django, AWS, Django Rest Framework, PostgreSQL, Kinesis, Redshift, Docker

#work(
  title: "Senior Software Engineer - BE Team Lead",
  location: "London, UK",
  company: "Tictrac",
  dates: dates-helper(start-date: "Aug 2012", end-date: "Oct 2019"),
)
- Technical lead for the backend team. Responsible for mentoring, running 360 reviews and performance reviews for two Junior developers along with curating the technical backlog for the team.
- Project Lead & Technical Designer for many of the features implemented for Tictrac's white-labelled health and wellness platform.

*_Technology:_* Python, AWS, Django, Django Rest Framework, PostgreSQL, Docker, Kubernetes


== Skills
- *Programming Languages*: Python, Rust, Typescript/Javascript, HTML/CSS, Bash
- *Technologies*: Django, FastAPI, Flask, Django Rest Framework, PostgreSQL, Kubernetes, Git, Docker, AWS, Azure, Github Actions, GraphQL

== Education

#edu(
  institution: "Dublin City University",
  location: "Dublin, Republic of Ireland",
  dates: dates-helper(start-date: "2006", end-date: "2011"),
  degree: "Bachelor's of Science, Computer Applications (Software Engineering)",
)
