class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.141"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.141.tar.gz"
      sha256 "1869343b8ab8a60b8c6697c115889fd3cedf78b0b07c3b610a966598abe9c7f7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.141.tar.gz"
      sha256 "c0e7679abb859e2492fbb18be2b89887828f1fb54b55d28c1136f9f3ade8bab8"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
