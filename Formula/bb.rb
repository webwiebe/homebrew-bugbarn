class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.293"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.293.tar.gz"
      sha256 "c44eca7e8de750467956c212e4faaf29051b1f3f28b349806435930472502df0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.293.tar.gz"
      sha256 "8ad01581f264152f3a32240297f76c37fc8bef5fc36affdeaed7dc0a615113cc"
    end
  end

  def install
    bin.install "bb"
  end
end
