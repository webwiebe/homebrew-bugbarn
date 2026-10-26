class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.287"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.287.tar.gz"
      sha256 "7c50712f9a100ef98ff26e39c594d0f5e11d9fd5ff0c9b0d2dbba9687c99bbd5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.287.tar.gz"
      sha256 "63b74075b181700d4c76e6553a57882f354e173e45ae10bd423ca3c242f68592"
    end
  end

  def install
    bin.install "bb"
  end
end
