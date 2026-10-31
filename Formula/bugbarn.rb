class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.312"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.312.tar.gz"
      sha256 "f20e37bb9df6e59d7d7de1e9cab50a7598ecdb187ddfd466136cd3f3ba85ca40"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.312.tar.gz"
      sha256 "8635e6b3e907de39d3cfa50a04214bdb12cb0c23c540e24180c71fe0442ae576"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
