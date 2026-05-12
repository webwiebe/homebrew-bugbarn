class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.123"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.123.tar.gz"
      sha256 "a2ead8846679b28e7b5611124d04bb8cb35d69ba7f8a9001f2953de3db9a5a25"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.123.tar.gz"
      sha256 "331b854345d68f0aacb3848f75951b9150a29ee88b46be31c56a3200cf487863"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
