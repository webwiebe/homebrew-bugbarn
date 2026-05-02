class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.24.tar.gz"
      sha256 "4fa37e8033442a49c4604b463f54f1021d282f4f582b4900ad38e18b5a9ab0d1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.24.tar.gz"
      sha256 "476f26572fa09ef3343ab51f69506452d4c87f946375fbd47412839b09aa508e"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
