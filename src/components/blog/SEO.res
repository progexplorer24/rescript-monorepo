module PageSEO = {
  @react.component
  let make = (~title: string, ~description: string) => {
    let router = Next.Router.useRouter()

    <Next.Head>
      <title> {title->Utils.str} </title>
      <meta name="robots" content="follow, index" />
      <meta name="description" content={description} />
      <meta property="og:url" content={`${SiteMetadata.metadata.siteUrl}${router.asPath}`} />
      <meta property="og:type" content="website" />
      <meta property="og:site_name" content={SiteMetadata.metadata.title} />
      <meta property="og:description" content={description} />
      <meta property="og:title" content={title} />
      <meta
        property="og:image"
        content={`${SiteMetadata.metadata.siteUrl}${SiteMetadata.metadata.socialBanner}`}
      />
      <meta name="twitter:card" content="summary_large_image" />
      <meta name="twitter:site" content={SiteMetadata.metadata.twitter} />
      <meta name="twitter:title" content={title} />
      <meta name="twitter:description" content={description} />
      <meta
        name="twitter:image"
        content={`${SiteMetadata.metadata.siteUrl}${SiteMetadata.metadata.socialBanner}`}
      />
    </Next.Head>
  }
}
// module BlogSEO = {
//   @react.component
//   let make = (~authorDetails, ~title, ~summary, ~date, ~lastmod, ~url, ~images=[]) => {
//     let router = Next.Router.useRouter()
//     let publishedAt = Js.Date.toISOString(date)
//     // INFO: Change
//     let modifiedAt = Js.Date.toISOString(lastmod) // || date
//     //   images.length === 0
//     //     ? [siteMetadata.socialBanner]
//     //     : typeof images === 'string'
//     //     ? [images]
//     //     : images

//     let featuredImages = Js.Array2.map(images, img => {
//       {
//         "@type": "ImageObject",
//         "url": `${SiteMetadata.metadata.siteUrl}${img}`,
//       }
//     })

//     let authorList = if authorDetails {
//       Js.Array2.map(authorDetails, author => {
//         {
//           "@type": "Person",
//           "name": author.name,
//         }
//       })
//     } else {
//       {
//         "@type": "Person",
//         "name": siteMetadata.author,
//       }
//     }

//     let structuredData = {
//       "@context": "https://schema.org",
//       "@type": "Article",
//       "mainEntityOfPage": {
//         "@type": "WebPage",
//         "@id": url,
//       },
//       "headline": title,
//       "image": featuredImages,
//       "datePublished": publishedAt,
//       "dateModified": modifiedAt,
//       "author": authorList,
//       "publisher": {
//         "@type": "Organization",
//         "name": siteMetadata.author,
//         "logo": {
//           "@type": "ImageObject",
//           "url": `${siteMetadata.siteUrl}${siteMetadata.siteLogo}`,
//         },
//       },
//       "description": summary,
//     }

//     <>
//       <Head>
//         <title> {title} </title>
//         <meta name="robots" content="follow, index" />
//         <meta name="description" content={summary} />
//         <meta property="og:url" content={`${siteMetadata.siteUrl}${router.asPath}`} />
//         <meta property="og:type" content="article" />
//         <meta property="og:site_name" content={siteMetadata.title} />
//         <meta property="og:description" content={summary} />
//         <meta property="og:title" content={title} />
//         {featuredImages.map(img => <meta property="og:image" content={img.url} key={img.url} />)}
//         <meta name="twitter:card" content="summary_large_image" />
//         <meta name="twitter:site" content={siteMetadata.twitter} />
//         <meta name="twitter:title" content={title} />
//         <meta name="twitter:description" content={summary} />
//         <meta name="twitter:image" content={featuredImages[0].url} />
//         {date && <meta property="article:published_time" content={publishedAt} />}
//         {lastmod && <meta property="article:modified_time" content={modifiedAt} />}
//         <link rel="canonical" href={`${siteMetadata.siteUrl}${router.asPath}`} />
//         <script
//           type_="application/ld+json"
//           dangerouslySetInnerHTML={{__html: JSON.stringify(structuredData, null, 2)}}
//         />
//       </Head>
//     </>
//   }
// }
