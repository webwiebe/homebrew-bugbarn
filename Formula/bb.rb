class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.66"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.66.tar.gz"
      sha256 "f5251e0f0074d9c21debdc6223bd8ece969ea5d5e89cd776f5cff35687f95254"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.66.tar.gz"
      sha256 "0ec6082c4a051c28d04e482fecaace707d8d48c5009836e7d478285ad06ad7cb"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
