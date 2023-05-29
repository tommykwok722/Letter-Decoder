function matches = decrypt(pattern)
% Read file
fid = fopen('wordlist.txt', 'rt');

matchNum = 0; % For counting number of matches
M = [];       % For storing matched words

% Assume that the file can be opened
while ~feof(fid)
    checkCond = 0;              % For checking conditions
    word = fgetl(fid);          % String for storing characters of the word
    wordLeng = length(word);    % Number of characters of the word
    pattLeng = length(pattern); % Number of characters of pattern
    
    if pattLeng ~= wordLeng     % Ignore words with different lengths
        continue;
    end
    
    for i = 1:wordLeng
        % Lower case: Comparing word(i) and pattern(i)
        if ('a' <= pattern(i)) && ('z' >= pattern(i))
            if pattern(i) == word(i)
                checkCond = checkCond + 1;
            end
        % Upper case: Comparing indices of word(i) and pattern(i)
        else
            if isequal(find(pattern == pattern(i)), find(word == word(i)))
                checkCond = checkCond + 1;
            end
        end   
    end
    
    if checkCond == wordLeng     % Fulfill all conditions
        M = vertcat(M, word);    % Save the result into the matrix M
        matchNum = matchNum + 1; % Increase number of matches by 1
    end
    
    if matchNum == 100 % Ignore the rest if more than 100 matches
        break;
    end
end
matches = M;
fclose(fid);
end