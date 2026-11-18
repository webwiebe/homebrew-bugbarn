class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.379"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.379.tar.gz"
      sha256 "60178ad3671ead10e36ae861ecea22b688d62132b8e57a783ac7d0be15ceb441"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.379.tar.gz"
      sha256 "7e0d84982102fb0df956ef2be9a1a4940f788bb8270c8aff7eab612f0945e666"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
