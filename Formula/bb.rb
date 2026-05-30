class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.45"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.45.tar.gz"
      sha256 "f65dc4b18cf7f776c46d84004b8e80d826cfbd1081d486316bfe8d7ec9812368"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.45.tar.gz"
      sha256 "2089d486d4f7babded537de5d327f305e8dba57f68e0cd764cb5eecf37c77b07"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
