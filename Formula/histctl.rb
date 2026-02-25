class Histctl < Formula
  desc "Search, browse, and delete browser history from the terminal"
  homepage "https://github.com/odysa/histctl"
  url "https://github.com/odysa/histctl/archive/refs/tags/v0.1.0.tar.gz"
  # TODO: update sha256 after creating the v0.1.0 release
  sha256 "PLACEHOLDER"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/odysa/histctl/cmd.Version=v#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags)
  end

  test do
    assert_match "histctl", shell_output("#{bin}/histctl --help")
  end
end
