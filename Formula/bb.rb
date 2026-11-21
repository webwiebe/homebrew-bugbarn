class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.392"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.392.tar.gz"
      sha256 "f953392401bb9cfeddb916fe2a6401c69fae52c07652230417505d545185d452"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.392.tar.gz"
      sha256 "8753e01020ef960c45af225ebdc7281529f7a57585244e80083cb376b3869506"
    end
  end

  def install
    bin.install "bb"
  end
end
