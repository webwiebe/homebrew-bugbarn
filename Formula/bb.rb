class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.88"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.88.tar.gz"
      sha256 "3c96c0abff6cabe8ed73e9d7acc5320777c566eb455de411de4ff96ba4d2372c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.88.tar.gz"
      sha256 "84ad29dd29444248194ba165848c8ff95300d1a7e984aaac73d856c94fc12a0f"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
