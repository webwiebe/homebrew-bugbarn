class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.191"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.191.tar.gz"
      sha256 "1509910a625de578ade9b62df5f1d7e7cbd9ef6e732dd0a8e0e4e006d7d63982"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.191.tar.gz"
      sha256 "644de701e21897498f18453af781cfc143fe47921dc6dca220dfef125b454940"
    end
  end

  def install
    bin.install "bb"
  end
end
