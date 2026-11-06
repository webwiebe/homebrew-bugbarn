class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.335"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.335.tar.gz"
      sha256 "bd8495f3b7c94a241c3494d3019f6009fd98676b5b3488caf212c10c7c5686f7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.335.tar.gz"
      sha256 "515fe4b90277a51eb2881319e05583437b8b360e496c6e70f54ebc45aa91445d"
    end
  end

  def install
    bin.install "bb"
  end
end
