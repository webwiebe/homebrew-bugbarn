class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.42"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.42.tar.gz"
      sha256 "2f252eec8f06617543ffc1d61b4fc2330b70a5819409367020d699bd3ffb0015"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.42.tar.gz"
      sha256 "e9c9e2a82c054e62f9b7bc7a1fa0bd7f0431c95fa00929ad5ff8a2253535a544"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
