import Head from 'next/head'
import {make as Hello} from "../components/Hello.bs"

export default function Home() {
  return (
    <div>
      <Head>
        <title>Create Next App</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <main>
        <h1>Hello World</h1>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis enim dicta expedita esse repellat quam, quasi ratione ad. Incidunt ducimus quos aperiam quidem natus? Sed recusandae quis error deleniti consectetur quod, alias aperiam atque quam vel rem repellat vitae ad et ipsum perferendis nesciunt! Eveniet possimus voluptate iste deleniti et!</p>
       <Hello name="Peter" />
      </main>

     
    </div>
  )
}
