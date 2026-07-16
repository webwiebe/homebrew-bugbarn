class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.146"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.146.tar.gz"
      sha256 "423e4ae45e39e7ebf39687ddb20915bf9cf5cef3ff4a8718bd942421afbefa7e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.146.tar.gz"
      sha256 "04172fea70742f8919de19992b2fbe5e5005891512ef9087aeb115db12876603"
    end
  end

  def install
    bin.install "bb"
  end
end
