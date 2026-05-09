class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.104"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.104.tar.gz"
      sha256 "e0be0b60c52303a06576779f627b6b74938ff562f72374401eaef0fb874260fe"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.104.tar.gz"
      sha256 "59513a4cd5d70005cb37fd95ac0ff6532ce6b4aeede6796a3b776182dd05bd84"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
