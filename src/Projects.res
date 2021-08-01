module Styles = {
  open Tailwind
  let mainWrapper = twStyle([
    dividers([divideY(~color=#gray200, #1), dark([divideY(~color=#gray700, #1)])]),
  ])
  let titleSection = twStyle([pt(#6), pb(#8), md([dividers([spaceY(#5)])])])
  let h1 = twStyle([
    text(#xl3),
    fontWeight(#800),
    leading(#9),
    tracking(#tight),
    textColor(#gray900),
    dark([textColor(#gray100)]),
    sm([text(#xl4), leading(#10)]),
    md([text(#xl6), leading(#14)]),
  ])

  let showcase = twStyle([text(#lg), leading(#7), textColor(#gray500), dark([textColor(#gray400)])])
  let container = twStyle([container, py(#12)])
  let flexWrapper = twStyle([flex, flexWrap, nm(#4)])
}

let default = () => <>
  <SEO.PageSEO
    title={`Projects - ${SiteMetadata.metadata.author}`}
    description={SiteMetadata.metadata.description}
  />
  <div className=Styles.mainWrapper>
    <div className=Styles.titleSection>
      <h1 className=Styles.h1> {"Projects"->Utils.str} </h1>
      <p className=Styles.showcase>
        {"Showcase your projects with a hero image (16 x 9)"->Utils.str}
      </p>
    </div>
    <div className=Styles.container>
      <div className=Styles.flexWrapper>
        {React.array(
          Js.Array2.map(ProjectsData.projectsData, project =>
            <Card
              key={project.title}
              title={project.title}
              description={project.description}
              imgSrc={project.imgSrc}
              href={project.href}
            />
          ),
        )}
      </div>
    </div>
  </div>
</>
