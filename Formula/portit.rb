class Portit < Formula
  desc "A minimal TUI for inspecting listening TCP ports and killing processes"
  homepage "https://github.com/odysa/portit"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/odysa/portit/releases/download/v0.1.4/portit-aarch64-apple-darwin.tar.gz"
      sha256 "8675011c20656f9a1174e575b8c686c4f6ffbc78360279832edac10ce83d668c"
    end
    on_intel do
      url "https://github.com/odysa/portit/releases/download/v0.1.4/portit-x86_64-apple-darwin.tar.gz"
      sha256 "f369dea8557b3a26a72fc4cf39c152f3ae3d402200888eb8a70692f37d2beeff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/odysa/portit/releases/download/v0.1.4/portit-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7ad0c31263fcc61dd961a20e919101b349772f96246ea6eb60d29f9f93fdafba"
    end
  end

  def install
    bin.install "portit"
  end
end
