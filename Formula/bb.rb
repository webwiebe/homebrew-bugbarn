class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.47"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.47.tar.gz"
      sha256 "05ffe246b412d4a8433f02be66af4dabf80a65914cc5d9aad3be7d36fa4da360"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.47.tar.gz"
      sha256 "ab62d51ec1158392e67891b588f98d0c6ecc50ece642fb6ce62d4631df53b77f"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
