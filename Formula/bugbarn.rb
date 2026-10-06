class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.215"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.215.tar.gz"
      sha256 "0a54a11ed340994318f9c24348cb40156122a9fd759143aab811a7fa9834a164"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.215.tar.gz"
      sha256 "03d6c870c0008ac11c59015af4323ca21122425c3acb36c0d8ded9fe16c42f9e"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
