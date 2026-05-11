class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.111"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.111.tar.gz"
      sha256 "1954ce1bdccd4c3ff3c685f2f5077ab52b51ae6873d4a880322326ad6d5884bc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.111.tar.gz"
      sha256 "566742e2b7ed799603cd5f9160adf30adc25638f4a1c361af7a270329ba095a7"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
