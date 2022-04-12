import Image from "next/image";
import { useMoralis } from "react-moralis";

export default function Home() {
  const { authenticate } = useMoralis();

  return (
    <div className="bg-black relative">
      <h1>Login screen</h1>
      <div className="flex flex-col absolute z-50 h-4/6 items-center justify-center w-full space-y-4">
        <Image
          className="object-cover rounded-full"
          src="https://links.papareact.com/3pi"
          alt="logo"
          height={200}
          width={200}
        />
        <button
          onClick={authenticate}
          className="bg-yellow-500 rounded-lg p-5 font-bold animate-pulse"
        >
          Login to METAVERSE
        </button>
      </div>
      <div className="w-full h-screen">
        <Image
          src="https://links.papareact.com/55n"
          alt="background"
          layout="fill"
          objectFit="cover"
        />
      </div>
    </div>
  );
}
