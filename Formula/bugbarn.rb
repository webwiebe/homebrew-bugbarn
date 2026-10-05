class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.204"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.204.tar.gz"
      sha256 "3ef395576d20eef41182f8bbd205ec382d679d656819a87f93f67f644d49c05c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.204.tar.gz"
      sha256 "853ca0212162289c46ba2653df6c459faaf1d961983d990e8b9de73c6df19aa4"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
