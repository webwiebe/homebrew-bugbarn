class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.137"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.137.tar.gz"
      sha256 "a14db237417d1e7a09fa89f679ee2e591dcad8d6c1f1d511c85876a24b1c00ff"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.137.tar.gz"
      sha256 "673a9c2a73a10616d26e58ad7e5a1efa769b73e33a1fd5ba9484cd1db3250b65"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
