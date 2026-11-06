class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.331"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.331.tar.gz"
      sha256 "f0f096fb0571ec18796f8abccfe255df4f88531cf6773eb78771ba145aa16002"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.331.tar.gz"
      sha256 "1b3f0fc98e608272306d494ff23ec843008bfe81fa7b5859bd1c0ba0444585ba"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
