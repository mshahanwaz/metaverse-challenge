import Image from "next/image";
import { useMoralis } from "react-moralis";

export default function Home() {
  const { authenticate } = useMoralis();

  return (
    <div className="bg-pink-900 h-screen flex items-center justify-center">
      <button
        className="px-8 py-4 bg-pink-500 hover:bg-pink-600 hover:shadow-lg hover:mb-1 transition-all rounded-lg h-fit"
        onClick={authenticate}
      >
        Login to METAVERSE
      </button>
    </div>
  );
}
