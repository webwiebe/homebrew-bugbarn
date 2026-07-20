class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.152"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.152.tar.gz"
      sha256 "bb9f406226803a111793b5c5a4a5963a8d70c054e37299c5ad588696c5bbb33b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.152.tar.gz"
      sha256 "f037fcae9576bb56d4b42f3d5a1c97a98bbabe186c0fc0047f28e5599c617766"
    end
  end

  def install
    bin.install "bb"
  end
end
