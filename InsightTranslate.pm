package Insight;
use LWP::Simple;

my $s = shift;
my $d = shift;
my $k = shift;
if ($s && $d) {
	my $get_translations = get 'http://server1.nlp.insight-centre.org/cgi-bin/smtAPI.cgi?sentence='.$s.'&direction='.$d.'&key='.$k.'"';
	print $get_translations;
}

sub translate {
	my $sentence = shift;
	my $direction = shift;
	my $key = shift;
	return get 'http://server1.nlp.insight-centre.org/cgi-bin/smtAPI.cgi?sentence='.$sentence.'&direction='.$direction.'&key='.$key.'"';
}

1;