class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.18.tar.gz"
      sha256 "69f12b41f3b437072eb7cc929ac21a1492e3787d78bdf6dbf5afd3e89207ef23"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.18.tar.gz"
      sha256 "f1bbffff50ff56cb7b839626ed88f73226698e849a9b1ed9b788f3c4e36f1fb4"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
