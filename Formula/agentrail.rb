class Agentrail < Formula
  desc "Portable coding-agent handoff CLI"
  homepage "https://github.com/Latentik/agentrail"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Latentik/agentrail/releases/download/v0.1.5/agentrail-v0.1.5-macos-arm64.tar.gz"
      sha256 "2ef3a474f01dc8d44a4e2188c592a6b8388f684636da45a0bb12af0ab380ada8"
    end
  end

  def install
    libexec.install "agentrail"
    executable = if (libexec/"agentrail").directory?
      libexec/"agentrail"/"agentrail"
    else
      libexec/"agentrail"
    end
    bin.install_symlink executable => "agentrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentrail --version")
  end
end
