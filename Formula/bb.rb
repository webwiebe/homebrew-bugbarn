class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.182"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.182.tar.gz"
      sha256 "4a47294dc3ee4a793dd8c3c66bcccdae06c34469a88017b42e3706840015cf51"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.182.tar.gz"
      sha256 "ad31c363b1e9096c8fda92a5ea39019ac7533351a801615ff933f65612b52ce6"
    end
  end

  def install
    bin.install "bb"
  end
end
