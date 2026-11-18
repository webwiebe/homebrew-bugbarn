class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.382"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.382.tar.gz"
      sha256 "d3a30e86770cfb23fe97ddbc3e3f30adf266fa05fc0cdd4b89dde24ff4aad31f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.382.tar.gz"
      sha256 "6c50ec2cd9ebb6ed263fd533c40466a15e0a3fc2b1b08b57c56d141ec3014e21"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
