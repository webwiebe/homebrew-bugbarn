class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.82"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.82.tar.gz"
      sha256 "0f49a3fe4b7be9cf02f0c036008253883167cf417bb32e2f88f793735bcde48f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.82.tar.gz"
      sha256 "54acb967a59e4daa819b4933353ba41e4a9ceaac4f7a9e0d0e9e6e7451a10430"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
