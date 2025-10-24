# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Pvetui < Formula
  desc "Terminal UI for Proxmox VE"
  homepage "https://github.com/devnullvoid/pvetui"
  version "1.0.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/devnullvoid/pvetui/releases/download/v1.0.7/pvetui_1.0.7_darwin_amd64.tar.gz"
      sha256 "fc39f165d564410e2807997f1ee535a6c69faf7d29749cef4a0cf5f324b33150"
    end
    on_arm do
      url "https://github.com/devnullvoid/pvetui/releases/download/v1.0.7/pvetui_1.0.7_darwin_arm64.tar.gz"
      sha256 "124c54ae535f44035886699234bada6c3ce519e5f35ca3ca10c01770b8594a01"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/devnullvoid/pvetui/releases/download/v1.0.7/pvetui_1.0.7_linux_amd64.tar.gz"
      sha256 "6b7080d1ec98e898394b8ca069ae9669e36193c3fb75a1c02a3a1d03bc9a69d0"
    end
    on_arm do
      url "https://github.com/devnullvoid/pvetui/releases/download/v1.0.7/pvetui_1.0.7_linux_arm64.tar.gz"
      sha256 "1835911c82a2eb33579665dc527d04548a17c6f0358952e4ea8b1d0ed8f19496"
    end
  end

  def install
    bin.install "pvetui"
  end

  test do
    # Test that the binary exists and can show help
    assert_match "pvetui", shell_output("#{bin}/pvetui --help")
  end
end
