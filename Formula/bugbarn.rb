class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.94"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.94.tar.gz"
      sha256 "db3390dbb42e18d45cfe535cf7621c3a9db33eaaf279bfd07b0887367662a8b5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.94.tar.gz"
      sha256 "eaa6039dccefbbb1d7a72c48ee972db983fe671a3622d725eec3385c82cc4d68"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
