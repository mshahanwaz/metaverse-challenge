import Head from "next/head";
import Login from "../components/Login";
import Messages from "../components/Messages";
import { useMoralis } from "react-moralis";
import Header from "../components/Header";

export default function Home() {
  const { isAuthenticated, logout } = useMoralis();

  if (!isAuthenticated) return <Login />;

  return (
    <div className="h-screen overflow-y-scroll bg-gradient-to-b from-black to-fuchsia-900">
      <Head>
        <title>METAVERSE CHALLENGE</title>
        <meta name="description" content="Metaverse challenge for WEB3.0" />
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <div className="max-w-screen-2xl mx-auto">
        <Header />
        <Messages />
      </div>
      {/* <button onClick={logout}>Logout</button> */}
    </div>
  );
}
