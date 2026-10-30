class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.304"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.304.tar.gz"
      sha256 "82185bff201970d5bfc635ba6f53a759b5466cc59d4e574153442014b5c4eda9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.304.tar.gz"
      sha256 "1eefa7fb04b00f841b2de4e4613ab2dcc87c9523aa4c26b156890e71e965beb5"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
