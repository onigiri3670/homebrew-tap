# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class HomebrewChromenv < Formula
  desc ""
  homepage ""
  url "https://github.com/onigiri3670/chromenv/archive/0.0.3.tar.gz"
  sha256 "2114b1ee27374084872d75b5a2b8145893bb9501cf0aebe7993db1d3979a9e1a"
  license ""

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    puts 'installメソッドだよ'
    bin.install "homebrew-chromenv"
    # system "cmake", ".", *std_cmake_args
  end

end
