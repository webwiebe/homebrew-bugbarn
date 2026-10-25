class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.283"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.283.tar.gz"
      sha256 "5612c666dad547018e5e10899cc0c56565988738f678d2b45b31a32ea73be0fa"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.283.tar.gz"
      sha256 "646e9fabe2f6ec036f4189658aa1f07fea0704a826a08892487fcd60bf0eadb9"
    end
  end

  def install
    bin.install "bb"
  end
end
