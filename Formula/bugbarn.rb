class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.226"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.226.tar.gz"
      sha256 "3f6ce32989bfe7f46a6bdec72ab42faab5eddc2838b6e9529892fb75335587fc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.226.tar.gz"
      sha256 "70c8ad2e63cf1a8e8bb68b80e0cfc523d02f11b37a8fef501529f764b81391cf"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
