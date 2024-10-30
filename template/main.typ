#import "RUG.typ": *

// faculty

// CHANGE THESE
#show: report.with(
  title: "Project ",
  group : false, // is it a group project?
  authors: (
    "Fut Futsen",
    "Jan Jansen",
    "Knut Knutsen",
  ),
  group_name: "Group 14",
  course_code: "IKT123-G",
  course_name: "Course name",
  date: "October 2024",
  lang: "en", // use "nl" for dutch

  /**
  * None = generic RUG logo
  * engineering = faculty of science and engineering
  * economics = faculty of Economics and Business
  */
  faculty: "engineering", 

  pagenumber-placement : top + right,  // top-bottom , left - center - right
  intro-text: "To fulfill the requirements for the degree of 
Master of ...
at University of Groningen under the supervision of ... ", // Add your own
)åç

// neat code
#import "@preview/codly:1.0.0": *
#show: codly-init.with()

= Acknowledgments
#lorem(250)
#pagebreak()

= Abstract
#lorem(50)
#pagebreak()
== Citation
This is something stated from a source .

