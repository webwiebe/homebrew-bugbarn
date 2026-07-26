class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.154"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.154.tar.gz"
      sha256 "af908f6ced678874e400844840c4d7c8842b70168326a4f53be6b36f222e1cb1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.154.tar.gz"
      sha256 "a1afe140c81ebe8bf19a90c45d9630420794f9214331c5c595f9731432a953e7"
    end
  end

  def install
    bin.install "bb"
  end
end
