class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.299"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.299.tar.gz"
      sha256 "0b399a9ebcbca5e08e9035dad7291251128e9d814338749951b968115ca2a535"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.299.tar.gz"
      sha256 "746a42039f34612a9b0373d06d6b45336f51871e31c4058b72e7b7bd70d1fbbb"
    end
  end

  def install
    bin.install "bb"
  end
end
