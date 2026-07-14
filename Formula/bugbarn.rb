class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.140"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.140.tar.gz"
      sha256 "36a1c0ad05190623316d17ca703b392d560f519781917bf4bf56d8adea11ec91"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.140.tar.gz"
      sha256 "482e4507228ec829d121ca0256519d271491da14e8a8f2acf92306d986be149f"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
