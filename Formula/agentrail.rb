class Agentrail < Formula
  desc "Portable coding-agent handoff CLI"
  homepage "https://github.com/Latentik/agentrail"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Latentik/agentrail/releases/download/v0.1.3/agentrail-v0.1.3-macos-arm64.tar.gz"
      sha256 "babff776d2d33bc02a90e3bfa7f10ef0298278086242ef1ebab4eac16c5b2ae7"
    end
  end

  def install
    libexec.install "agentrail"
    bin.install_symlink libexec/"agentrail"/"agentrail" => "agentrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentrail --version")
  end
end
