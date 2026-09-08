class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.177"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.177.tar.gz"
      sha256 "749d04450fd4416a29a3ec5228494503d74a68cfcc82ac45f80ee2b842805b28"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.177.tar.gz"
      sha256 "260793c93278cc81e4c1a2d2da95a3cdc5758941d69bfbc97f37e49e9c354c45"
    end
  end

  def install
    bin.install "bb"
  end
end
