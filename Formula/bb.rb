class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.81"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.81.tar.gz"
      sha256 "7ad11b28bdcf236960dd85b5517b22c651d1c089a9a0272739f9cd41242f1cb4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.81.tar.gz"
      sha256 "c46b39c2af4f75f107bfa46fa1c64c069478507d4fba4d9739e014b15fb63b71"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
