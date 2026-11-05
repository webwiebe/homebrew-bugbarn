class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.320"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.320.tar.gz"
      sha256 "a323feab79ff17b914233fb0e1697d0d7b52adcb9ae1c530cdb366c11f7d6765"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.320.tar.gz"
      sha256 "a759f7347611e418635d60842fd9b2382d8b69bb138d8930197877414e2e20e5"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
