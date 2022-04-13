import { useMoralis } from "react-moralis";

export default function ChangeUsername() {
  const { setUserData, isUserUpdating, userError, user } = useMoralis();

  function setUsername() {
    const username = prompt(`Enter your new Username (${user.getUsername()})`);

    if (!username) return;

    setUserData({ username });
  }

  return (
    <div className="text-sm absolute top-5 right-5">
      <button
        onClick={setUsername}
        disabled={isUserUpdating}
        className="hover:text-pink-700"
      >
        Change your Username
      </button>
    </div>
  );
}
