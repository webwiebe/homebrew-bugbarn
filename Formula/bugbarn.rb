class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.245"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.245.tar.gz"
      sha256 "f76a7f8c1fb8c93328b52befdcfad25f26802346fc1b9dd527e970bd5150d2f4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.245.tar.gz"
      sha256 "e8872d4cc43120241960b161609c286f4da3963eeabd70ae473c14acd47a8185"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
