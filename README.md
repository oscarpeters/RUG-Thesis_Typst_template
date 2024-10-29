# RUG-Thesis_Typst_template
Rijksuniversiteit Groningen Thesis Template for Typst

This is a simple Thesis template for the University of Groningen / Rijksuniversiteit Groningen.

## Usage

In the Typst web app simply click "Start from template" on the dashboard and search for RUG Thesis.

From the CLI you can initialize the project with the command

typst init @preview/RUG-Thesis-template:0.0.1
A new directory with all the files needed to get started will be created.

## Configuration

**Report Parameters**
*Update these parameters to customize your report:*

- `Title` (title): The main title of your report.
- `Group` (group): Set to true if this is a group project; otherwise, set to false.
- `Authors` (authors): List of authors contributing to the report.
- `Group Name` (group_name): Name of the group (used only if group is true).
- `Course Code`(course_code) and Course Name (course_name): The code and name of the course.
- `Date` (date): Date of the report, formatted as desired.
- `Language` (lang): Language for the report, either "en" for English or "nl" for Dutch.
- `Faculty` (faculty): Define the faculty for logo selection:
    - `"engineering"`: Faculty of Science and Engineering
    - `"economics"`: Faculty of Economics and Business
    - `"None"` or omit to use the generic RUG logo.
- `Page Number Placement` (pagenumber-placement): Customize where the page number appears. 
  Options are **top** or **bottom** and **left**, **center**, or **right**.
- `Introductory Text` (intro-text): Customizable introductory text for the title page, e.g., degree information or acknowledgment of supervision.
- `Acknowledgments`: A sample section for acknowledgments, filled with placeholder text from #lorem.
Abstract: An abstract section, followed by a Citation sub-section.

```typst
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
)

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

```

## Compile

To compile the project from the CLI you just need to run

```bash
typst compile main.typ
```

or if you want to watch for changes (*recommended*)

```bash
typst watch main.typ
```

## Bibliography

The bibliography is generated with `references.yml` and `references.bib`. The `references.yml` file is a list of references, each entry containing the following fields:

- `title`: The title of the reference.
- `authors`: A list of authors.
- `year`: The year of publication.
- `type`: The type of reference, e.g., "article" or "book".
- `journal`: The name of the journal.
- `volume`: The volume of the journal.
- `number`: The number of the issue.
- `pages`: The pages of the article.
- `doi`: The DOI of the article.
- `url`: The URL of the article.

The `references.bib` file is generated from the `references.yml` file using the `bibtex` command.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.   