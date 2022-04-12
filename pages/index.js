import Head from "next/head";
import Login from "../components/Login";
import { useMoralis } from "react-moralis";

export default function Home() {
  const { isAuthenticated, logout } = useMoralis();

  if (!isAuthenticated) return <Login />;

  return (
    <div className="h-screen">
      <Head>
        <title>METAVERSE CHALLENGE</title>
        <meta name="description" content="Metaverse challenge for WEB3.0" />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <h1>Welcome to page inside</h1>
      <button onClick={logout}>Logout</button>
    </div>
  );
}
