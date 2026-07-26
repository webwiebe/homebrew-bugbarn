class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.156"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.156.tar.gz"
      sha256 "94031da20b62bd3e355d16149097cd814c663bc21e03e5413ddc8b970b3ae87f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.156.tar.gz"
      sha256 "5266019e7302c97287d0311846fccc17955e2fd17797a19cf5280f246e573e0f"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
