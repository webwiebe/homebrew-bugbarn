class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.93"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.93.tar.gz"
      sha256 "d6f64bf754ab01c9cbba9f551eca02e351e2bbdd3c654d9b1e55fcc015d85a75"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.93.tar.gz"
      sha256 "a2e248bac539dd622e1fd612aa09ac23d0ec935b27a3e3e496ebf82d84f8a2cb"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
