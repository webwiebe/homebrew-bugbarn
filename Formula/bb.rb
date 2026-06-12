class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.80"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.80.tar.gz"
      sha256 "2717a99043ee391d2f13fd637efd9a56569d0acf540cd8e033417f6f248bff9c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.80.tar.gz"
      sha256 "d0436decf96111f166ba9c579ad413233a121019a4950ba23f8295b73db0f3f3"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
