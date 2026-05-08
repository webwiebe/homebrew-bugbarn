class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.82"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.82.tar.gz"
      sha256 "9d2446167a28dd0afb24c17155e8d0a095820dfc2c93d6c86e55a92797fe07b7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.82.tar.gz"
      sha256 "79d588fda905e5e29e5b205126801922052ceea34bfa66c104a8d343807e4c3a"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
