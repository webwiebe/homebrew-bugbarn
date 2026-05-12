class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.131"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.131.tar.gz"
      sha256 "f1268050f166ff2343a60ed4111a98b1122e4092d2bee21d7c1eb91d9802d308"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.131.tar.gz"
      sha256 "d124b64106a7d6537fd61864c97db9055d01cb03739c9ec6063267ab6ca1d503"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
