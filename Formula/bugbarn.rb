class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.162"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.162.tar.gz"
      sha256 "eabc810e9e4be42bf828abc9d150f19c93448251362ed8787158f78ccd2ecd0e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.162.tar.gz"
      sha256 "6228cb80da040940a96cbeb66ed48081bb193e9c5f093e917e7504162c5a4333"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
