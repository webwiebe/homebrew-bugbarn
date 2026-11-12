class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.362"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.362.tar.gz"
      sha256 "876d0269ca0d973aefae601c612c994ac487169cfa23bd6068fc8ae42bb899dd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.362.tar.gz"
      sha256 "a80c1982e67134c5687b4a113e7958a391b4e2a448372c42b90e4bbc3a452b56"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
