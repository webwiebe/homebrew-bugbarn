class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.125"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.125.tar.gz"
      sha256 "2bbf98e1fa621dbc715bbf1fb07ae81d3de397ad9a59afb2ee7af35c02ced95e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.125.tar.gz"
      sha256 "579c078d4921c47e7faf4dab429f474ebe6ca49655d8214823b6c8fb27f6978d"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
