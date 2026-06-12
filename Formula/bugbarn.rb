class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.78"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.78.tar.gz"
      sha256 "0cac86f4dc3ffa09298cf09a9d3344cde3da0782202f28fc5c48eb551846597d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.78.tar.gz"
      sha256 "15be31388679f40fe19a73aefd8ce14d18c5b450902380edc50c200fd04e7987"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
