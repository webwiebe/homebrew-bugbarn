class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.312"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.312.tar.gz"
      sha256 "16da00b24021fa63fb58237f4bcf8569afcfee41e5336699dc52284655468db6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.312.tar.gz"
      sha256 "7a272ceb10462b4fb29e71cdfa2a4b64f137653c4cbbffac67473b27e71e1320"
    end
  end

  def install
    bin.install "bb"
  end
end
