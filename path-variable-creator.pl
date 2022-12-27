#!/usr/bin/env perl

use Cwd 	   qw||;
use Data::Dump qw|dump|;

my $path = q|export PATH="%s$PATH"|;
my $dirs =  [ ];
my $loc  = q|.|;
my $list = q||;

LOOP: 
{
	while ( glob($loc.qq|/*|) )
	{
		if (-e and -d)
		{
			push @{$dirs}, s`^\./``r
		}
	}
	
	if (@{$dirs})
	{
		$loc = pop @{$dirs};

		$list .= Cwd::cwd().qq|/${loc}:|;
		
		# using the amazing goto construct ;)
		goto LOOP;
	}
}

printf $path.qq|\n|, $list;

