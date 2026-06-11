class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.69"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.69.tar.gz"
      sha256 "05a83b6ad954324e0c969cfe165cfb005f61437a11e734a4902063bb475ad450"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.69.tar.gz"
      sha256 "38d5b2a1802e796a6ca7534158035f48788a6b312074d9da573510e8d5d5aa8a"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
