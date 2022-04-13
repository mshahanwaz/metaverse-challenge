/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  images: {
    domains: ["cdn.pixabay.com", "links.papareact.com", "avatars.dicebear.com"],
  },
};

module.exports = nextConfig;
