class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.211"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.211.tar.gz"
      sha256 "3e64eaaea21e2b4511a8444dd7cb2867dd0c48199b1b834f867eeaed8e1a2eca"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.211.tar.gz"
      sha256 "49777d3b98a2e02dfd13c386fbd70f7269e58c9b7d8ee59bf19036fdf15d40ce"
    end
  end

  def install
    bin.install "bb"
  end
end
