class Portit < Formula
  desc "A minimal TUI for inspecting listening TCP ports and killing processes"
  homepage "https://github.com/odysa/portit"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/odysa/portit/releases/download/v#{version}/portit-aarch64-apple-darwin.tar.gz"
      sha256 "0242191b78487f4dbeda328e98a1f7cba5de6790ae826900507bde237bde14da"
    end
    on_intel do
      url "https://github.com/odysa/portit/releases/download/v#{version}/portit-x86_64-apple-darwin.tar.gz"
      sha256 "f4733b2e49ffb2ad5d2564920c4a904fb0ae269832c34a44aec07335e11d8987"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/odysa/portit/releases/download/v#{version}/portit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b830e7fae76fd3c30aa5a2e5bbee511765a7346958a440f7c248db296247d7e"
    end
  end

  def install
    bin.install "portit"
  end
end
