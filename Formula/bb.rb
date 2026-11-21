class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.393"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.393.tar.gz"
      sha256 "fe42d208ff17d32edb5232c64a7e78aed09631f3e1616e6b31c7db8169fb2ef7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.393.tar.gz"
      sha256 "fe6bb0f8276d096d07b38a54d682660170d25f1fa8c23a59314fbaf5b182caf7"
    end
  end

  def install
    bin.install "bb"
  end
end
