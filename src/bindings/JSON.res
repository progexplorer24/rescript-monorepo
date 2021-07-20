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

type geo = {
  lat: string,
  lng: string,
}

type address = {
  city: string,
  geo: geo,
  street: string,
  suite: string,
  zipcode: string,
}

type company = {
  bs: string,
  catchPhrase: string,
  name: string,
}

type user = {
  address: address,
  company: company,
  email: string,
  id: int,
  name: string,
  phone: string,
  username: string,
  website: string,
}

// bind to JS' JSON.parse
@scope("JSON") @val
external parseMetadata: string => data = "parse"

@scope("JSON") @val external parseUsersArray: 'a => array<user> = "parse"
