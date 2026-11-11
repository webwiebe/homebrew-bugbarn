class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.344"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.344.tar.gz"
      sha256 "aa1845aa4375b8a49977a0aea30627eade68955b03ee0814b2f84fa0043233b0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.344.tar.gz"
      sha256 "aa6f6c465097ff8a073ab40d9bd76e0ac3c72e87b07715c026c9cd76c1e8d72d"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
