#!/usr/bin/perl -w

str1 = '(<[0-9a-z]+>Tj|\[<[0-9a-z<>-]+>\]TJ)';
%str2 = 'sprintf(''(%d)Tj'', $count+$count2+1)';
str2 = 'sprintf(''(%d)Tj'', $count+1)';

while(s/str1/str2/se){ $count++ }

%% The PERL stuff
perlCmd = sprintf('"%s"',fullfile(matlabroot, 'sys\perl\win32\bin\perl'));
%perlstr = sprintf('%s -i.bak -pe "$count2 = $count2+$count; $count = 0; while(s/%s/%s/se){ $count++ +1 }" "%s"', perlCmd, str1, str2, infile);
perlstr = sprintf('%s -i.bak -pe "while(s/%s/%s/se){ $count++ }" "%s"', perlCmd, str1, str2, infile);
