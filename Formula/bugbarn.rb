class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.339"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.339.tar.gz"
      sha256 "8be383290956665c3397fdf76c917d2e0746fd73b794b181e12aa85da0c3b477"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.339.tar.gz"
      sha256 "047a09793830a18be7797e77226178f16e57b1d65a04774d7c127fd1ea8cdf99"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
