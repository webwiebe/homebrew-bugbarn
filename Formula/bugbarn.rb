class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.358"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.358.tar.gz"
      sha256 "401e51d88591213a49ebdebb6d365a82d05f17660fa43c259728478e8a0aa86d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.358.tar.gz"
      sha256 "1197c0d57c60d02f85c67d8dff0d9bb0774aefa41238684f9dc42e9af91feba5"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
