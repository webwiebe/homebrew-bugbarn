class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.394"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.394.tar.gz"
      sha256 "b058e2f9499a101e6384ee563100340ade0f1a97fd55dff3d565ba8f634ea7c0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.394.tar.gz"
      sha256 "3cf3a603359dd7bf6f80532775bdd7a8ffec6af1d89cfc4d3623a2927ad04ce8"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
