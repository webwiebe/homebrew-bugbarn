class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.191"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.191.tar.gz"
      sha256 "233b8f0930d2a04e4e35413075cdc02e836fc00a5592a8c79c2ca0d0053ac4f5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.191.tar.gz"
      sha256 "408d1785b67b62b68509108a96277c17ec87ef60c21e5af4df0645363e6a7b58"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
