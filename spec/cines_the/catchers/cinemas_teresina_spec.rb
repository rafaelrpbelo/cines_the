require 'spec_helper'

describe CinesTHE::Catchers::CinemasTeresina do
  it 'URL must be correct' do
    expect(subject.url).to eq 'http://cinemasteresina.com.br'
  end

  it 'must catcher the HTML document' do
    expect(subject.html).to match %r[<html.*>.*</html>]xm
  end
end
