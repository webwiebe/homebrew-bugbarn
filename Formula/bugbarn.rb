class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.109"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.109.tar.gz"
      sha256 "8d5113edc28641be511acbf73feddc52b5e2be2d22abaf3096bdddbf7581cc67"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.109.tar.gz"
      sha256 "5a8312e1ee88571f6d89912e13511d8520ba2b53004180cabbf31b8d5d8ea611"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
