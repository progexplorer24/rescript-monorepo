import Head from 'next/head'
import {make as Hello} from "../../components/Hello.bs"

export default function Home() {
  return (
      <main>
        Acme
        <Hello name="Patryk" />
      </main>    

  )
}
