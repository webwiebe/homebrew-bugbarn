class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.224"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.224.tar.gz"
      sha256 "54055f4bdb9da9fd0f96f7bd965b99a69d368bb62d2cfbab5f407439bfb9c74f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.224.tar.gz"
      sha256 "d8d9227cf2fbef463a87f50b62f0d27989e578c5a634aef14701f0c5e65860fd"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
