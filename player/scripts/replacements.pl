#!/usr/local/bin/perl
#
# Replacement script of doom written (quickly and quite messily) by Mirvin_Monkey

$msg_error = "Usage: replacements [inputfile] [includefile] [outputfile] [classname]\n";

$file_in  = shift || die( $msg_error );
$file_inc = shift || die( $msg_error );
$file_out = shift || die( $msg_error );

$classname = shift || die( $msg_error );

# Input file
open( FILE_IN, $file_in ) || die( "Couldn't open $file_in\n");
@file_input = <FILE_IN>;
close(FILE_IN);

# Include file
open( FILE_INC, $file_inc ) || die( "Couldn't open $file_inc\n");
@file_inc = <FILE_INC>;
close(FILE_INC);

# Output file
open(FILE_OUT, ">$file_out");

foreach $line ( @file_input )
{
	$line =~ s/PIPE_LOCATION/$ENV{'charpipeline'}/g;
	$line =~ s/CLASSNAME/$classname/g;

	if( rindex( $line, "FF_CLASS_SPECIFIC" ) > -1 )
	{
		foreach $line_inc ( @file_inc )
		{
		        $line_inc =~ s/PIPE_LOCATION/$ENV{'charpipeline'}/g;
		        $line_inc =~ s/CLASSNAME/$classname/g;

			print FILE_OUT $line_inc;
		}
 		print FILE_OUT "\n";
	}
	else
	{
		print FILE_OUT $line;
	}
}

close(FILE_OUT);
