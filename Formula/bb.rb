class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.71"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.71.tar.gz"
      sha256 "483b67db7dfa3eb0b6316928b388c65f41657c99c5fa246bd06a01b187b021ef"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.71.tar.gz"
      sha256 "5395123553ac5dfa7bd240c7329e31462e37a7909b0bccb1873240356aa340dd"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
