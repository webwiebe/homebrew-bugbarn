class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.4.2.tar.gz"
      sha256 "5412ab8abc8c6660162d33cfb4f625104bc31b960fa1ce8cfa510699e9532dfd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.4.2.tar.gz"
      sha256 "1019e1430488f8fdc349c031b73487a6728bcaa35927359f77e0f2b562215427"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
