class Agm < Formula
    desc "A smart command line tool for Git"
    homepage "https://github.com/odysa/agm"
    url "https://github.com/odysa/agm/releases/download/v0.1.0/agm-0.1.0.tar.gz"
    sha256 "6a66a709752d56cc8647099437845cdd414cd02a"
    version "0.1.0"

    def install
        bin.install "agm"
    end
end