class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.112"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.112.tar.gz"
      sha256 "5e6fa52e8fbcba1e0ba96b4736d54004b31a2f69378878dee0523510b22fc9e0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.112.tar.gz"
      sha256 "b9166894d92af6c6b004dfcd7a4688d2f89d57ab31fab0a8f630b2a2190d934f"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
