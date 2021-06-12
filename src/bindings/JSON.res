type data = {
  "title": string,
  "author": string,
  "headerTitle": string,
  "description": string,
  "language": string,
  "siteUrl": string,
  "siteRepo": string,
  "image": string,
  "socialBanner": string,
  "email": string,
  "github": string,
  "twitter": string,
  "facebook": string,
  "youtube": string,
  "linkedin": string,
  "locale": string,
}

// bind to JS' JSON.parse
@scope("JSON") @val
external parseMetadata: string => data = "parse"
