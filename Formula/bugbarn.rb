class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.321"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.321.tar.gz"
      sha256 "068d1cb6f828da844d5ae29986cfbb78cd1742dd6fd35f19db2d247a32fbe4ef"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.321.tar.gz"
      sha256 "d20cff8ec26e8ef735760cd65b55de168c95e26cba81db3e1cd5ae9600673cfc"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
