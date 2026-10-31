class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.305"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.305.tar.gz"
      sha256 "a72d6606056012e8ca354e50730b7f780038ae0f27fbb9d4f132b4fe2dcf393c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.305.tar.gz"
      sha256 "91f9bb6f74ed70302b51a4196ecc8cb1b9ebe3911fefbaeb27bc33f53f776410"
    end
  end

  def install
    bin.install "bb"
  end
end
