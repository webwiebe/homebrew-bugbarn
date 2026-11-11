class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.349"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.349.tar.gz"
      sha256 "1498216aa604a3fda47706ce46316f4298bab680682b38197e3715e134bef299"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.349.tar.gz"
      sha256 "bf0a59f29db7fdfc30848e2a32f1e82730661473c9a0b1652b9dd8bc694e9e01"
    end
  end

  def install
    bin.install "bb"
  end
end
