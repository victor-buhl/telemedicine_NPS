fid = fopen('time_stamp_Day1.csv', 'r');  % Open the file for reading

desiredLineNumber1 = 34;  % Example line number
desiredLineNumber2 = 23;  % Example line number
desiredLineNumber3 = 40;  % Example line number
desiredLineNumber4 = 47;  % Example line number
desiredLineNumber5 = 57;  % Example line number
desiredLineNumber6 = 58;  % Example line number
desiredLineNumber7 = 16;  % Example line number
desiredLineNumber8 = 17;  % Example line number
desiredLineNumber9 = 15;  % Example line number

counter = 1;
while ~feof(fid) && counter <= desiredLineNumber1 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber1
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues1 = diff(timeValues);
timeValues1 = timeValues(1:(end-1));

fclose(fid);  % Close the file

A1 = numericValues1;
% Find NaN elements
Elements = isnan(A1);

A(isnan(A1))=0;
timeValues1(Elements)=0;

Elements = A1>.2;
A1(A1>.2) = [];
timeValues1(Elements)= [];

Elements = A1 < .001;
A1(A1 < .001) = [];
timeValues1(Elements)= [];
fid = fopen('time_stamp_Day1.csv', 'r');  % Open the file for reading
counter = 1;
while ~feof(fid) && counter <= desiredLineNumber2 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber2
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues2 = diff(timeValues);
timeValues2 = timeValues(1:(end-1));

fclose(fid);  % Close the file

A2 = numericValues2;
% Find NaN elements
Elements = isnan(A2);

A2(isnan(A2))=0;
timeValues2(Elements)=0;

Elements = A2>.2;
A2(A2>.2) = [];
timeValues2(Elements)= [];

Elements = A2 < .001;
A2(A2 < .001) = [];
timeValues2(Elements)= [];
fid = fopen('time_stamp_Day1.csv', 'r');  % Open the file for reading
counter = 1;
while ~feof(fid) && counter <= desiredLineNumber3 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber3
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues3 = diff(timeValues);
timeValues3 = timeValues(1:(end-1));

fclose(fid);  % Close the file

A3 = numericValues3;
% Find NaN elements
Elements = isnan(A3);

A3(isnan(A3))=0;
timeValues3(Elements)=0;

Elements = A3>.2;
A3(A3>.2) = [];
timeValues3(Elements)= [];

Elements = A3 < .001;
A3(A3 < .001) = [];
timeValues3(Elements)= [];
fid = fopen('time_stamp_Day1.csv', 'r');  % Open the file for reading
counter = 1;
while ~feof(fid) && counter <= desiredLineNumber4 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber4
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues4 = diff(timeValues);
timeValues4 = timeValues(1:(end-1));

fclose(fid);  % Close the file

A4 = numericValues4;
% Find NaN elements

Elements = isnan(A4);

A4(isnan(A4))=0;
timeValues4(Elements)=0;

Elements = A4>.2;
A4(A4>.2) = [];
timeValues4(Elements)= [];

Elements = A4 < .001;
A4(A4 < .001) = [];
timeValues4(Elements)= [];
fid = fopen('time_stamp_Day1.csv', 'r');  % Open the file for reading
counter = 1;
while ~feof(fid) && counter <= desiredLineNumber5 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber5
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues5 = diff(timeValues);
timeValues5 = timeValues(1:(end-1));

fclose(fid);  % Close the file

A5 = numericValues5;
% Find NaN elements
Elements = isnan(A5);

A5(isnan(A5))=0;
timeValues5(Elements)=0;

Elements = A5>.2;
A5(A5>.2) = [];
timeValues5(Elements)= [];

Elements = A5 < .001;
A5(A5 < .001) = [];
timeValues5(Elements)= [];
fid = fopen('time_stamp_Day1.csv', 'r');  % Open the file for reading
counter = 1;
while ~feof(fid) && counter <= desiredLineNumber6 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber6
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues6 = diff(timeValues);
timeValues6 = timeValues(1:(end-1));

fclose(fid);  % Close the file

A6 = numericValues6;
% Find NaN elements
Elements = isnan(A6);

A6(isnan(A6))=0;
timeValues6(Elements)=0;

Elements = A6>.2;
A6(A6>.2) = [];
timeValues6(Elements)= [];

Elements = A6 < .001;
A6(A6 < .001) = [];
timeValues6(Elements)= [];
fid2 = fopen('time_stamp_Day2.csv', 'r');  % Open the file for reading
counter = 1;
while ~feof(fid2) && counter <= desiredLineNumber7 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber7
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues7 = diff(timeValues);
timeValues7 = timeValues(1:(end-1));

fclose(fid2);  % Close the file

A7 = numericValues7;
% Find NaN elements
Elements = isnan(A7);

A7(isnan(A7))=0;
timeValues7(Elements)=0;

Elements = A7>.2;
A7(A7>.2) = [];
timeValues7(Elements)= [];

Elements = A7 < .001;
A7(A7 < .001) = [];
timeValues7(Elements)= [];
fid2 = fopen('time_stamp_Day2.csv', 'r');  % Open the file for reading
counter = 1;
while ~feof(fid2) && counter <= desiredLineNumber8 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber8
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues8 = diff(timeValues);
timeValues8 = timeValues(1:(end-1));

fclose(fid2);  % Close the file

A8 = numericValues8;

Elements = isnan(A8);

A8(isnan(A8))=0;
timeValues8(Elements)=0;

Elements = A8>.2;
A8(A8>.2) = [];
timeValues8(Elements)= [];

Elements = A8 < .001;
A8(A8 < .001) = [];
timeValues8(Elements)= [];

fid2 = fopen('time_stamp_Day2.csv', 'r');  % Open the file for reading
counter = 1;
while ~feof(fid2) && counter <= desiredLineNumber9 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber9
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues9 = diff(timeValues);
timeValues9 = timeValues(1:(end-1));

fclose(fid2);  % Close the file

A9 = numericValues9;
% Find NaN elements
Elements = isnan(A9);

A9(isnan(A9))=0;
timeValues9(Elements)=0;

Elements = A9>.2;
A9(A9>.2) = [];
timeValues9(Elements)= [];

Elements = A9 < .001;
A9(A9 < .001) = [];
timeValues9(Elements)= [];

A1(1:6) = [];
A2(1:6) = [];
A3(1:6) = [];
A4(1:6) = [];
A5(1:6) = [];
A6(1:6) = [];
A7(1:6) = [];
A8(1:6) = [];
A9(1:6) = [];

A1(A1 < .001) = [];
A2(A2 < .001) = [];
A3(A3 < .001) = [];
A4(A4 < .001) = [];
A5(A5 < .001) = [];
A6(A6 < .001) = [];
A7(A7 < .001) = [];
A8(A8 < .001) = [];
A9(A9 < .001) = [];

binEdges = [0:.001:.12];
fig1 = figure();
subplot(331);
histogram(A1, binEdges)
xlim([0 .12]);
xlabel('Inter Transmission in Seconds');
ylabel('Quantity');
title('(a)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(332);
histogram(A2, binEdges)
xlim([0 .12]);
xlabel('Inter Transmission in Seconds');
ylabel('Quantity');
title('(b)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(333);
histogram(A3, binEdges)
xlim([0 .12]);
xlabel('Inter Transmission in Seconds');
ylabel('Quantity');
title('(c)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(334);
histogram(A4, binEdges)
xlim([0 .12]);
xlabel('Inter Transmission in Seconds');
ylabel('Quantity');
title('(d)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(335);
histogram(A5, binEdges)
xlim([0 .12]);
xlabel('Inter Transmission in Seconds');
ylabel('Quantity');
title('(e)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(336);
histogram(A6, binEdges)
xlim([0 .12]);
xlabel('Inter Transmission in Seconds');
ylabel('Quantity');
title('(f)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(337);
histogram(A7, binEdges)
xlim([0 .12]);
xlabel('Inter Transmission in Seconds');
ylabel('Quantity');
title('(g)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(338);
histogram(A8, binEdges)
xlim([0 .12]);
xlabel('Inter Transmission in Seconds');
ylabel('Quantity');
title('(h)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(339);
histogram(A9, binEdges)
xlim([0 .12]);
xlabel('Inter Transmission in Seconds');
ylabel('Quantity');
title('(i)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

% Convert Unix timestamps to MATLAB datetime objects
timeValues1 = datetime(timeValues1, 'ConvertFrom', 'posixtime');

% Extract seconds and round them to the nearest whole number
timeValues1 = round(second(timeValues1));

% Convert Unix timestamps to MATLAB datetime objects
timeValues2 = datetime(timeValues2, 'ConvertFrom', 'posixtime');

% Extract seconds and round them to the nearest whole number
timeValues2 = round(second(timeValues2));

% Convert Unix timestamps to MATLAB datetime objects
timeValues3 = datetime(timeValues3, 'ConvertFrom', 'posixtime');

% Extract seconds and round them to the nearest whole number
timeValues3 = round(second(timeValues3));

% Convert Unix timestamps to MATLAB datetime objects
timeValues4 = datetime(timeValues4, 'ConvertFrom', 'posixtime');

% Extract seconds and round them to the nearest whole number
timeValues4 = round(second(timeValues4));

% Convert Unix timestamps to MATLAB datetime objects
timeValues5 = datetime(timeValues5, 'ConvertFrom', 'posixtime');

% Extract seconds and round them to the nearest whole number
timeValues5 = round(second(timeValues5));

% Convert Unix timestamps to MATLAB datetime objects
timeValues6 = datetime(timeValues6, 'ConvertFrom', 'posixtime');

% Extract seconds and round them to the nearest whole number
timeValues6 = round(second(timeValues6));

% Convert Unix timestamps to MATLAB datetime objects
timeValues7 = datetime(timeValues7, 'ConvertFrom', 'posixtime');

% Extract seconds and round them to the nearest whole number
timeValues7 = round(second(timeValues7));

% Convert Unix timestamps to MATLAB datetime objects
timeValues8 = datetime(timeValues8, 'ConvertFrom', 'posixtime');

% Extract seconds and round them to the nearest whole number
timeValues8 = round(second(timeValues8));

% Convert Unix timestamps to MATLAB datetime objects
timeValues9 = datetime(timeValues9, 'ConvertFrom', 'posixtime');

% Extract seconds and round them to the nearest whole number
timeValues9 = round(second(timeValues9));

binEdges = [0:1:60];
fig2 = figure();
subplot(331);
histogram(timeValues1,binEdges)
xlabel('Inter Transmission in Seconds');
ylabel('Quantity of Inter Transmissions');
title('(a)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(332);
histogram(timeValues2,binEdges)
xlabel('Inter Transmission in Seconds');
ylabel('Quantity of Inter Transmissions');
title('(b)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(333);
histogram(timeValues3,binEdges)
xlabel('Inter Transmission in Seconds');
ylabel('Quantity of Inter Transmissions');
title('(c)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(334);
histogram(timeValues4, binEdges)
xlabel('Inter Transmission in Seconds');
ylabel('Quantity of Inter Transmissions');
title('(d)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(335);
histogram(timeValues5, binEdges)
xlabel('Inter Transmission in Seconds');
ylabel('Quantity of Inter Transmissions');
title('(e)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(336);
histogram(timeValues6, binEdges)
xlabel('Inter Transmission in Seconds');
ylabel('Quantity of Inter Transmissions');
title('(f)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(337);
histogram(timeValues7, binEdges)
xlabel('Inter Transmission in Seconds');
ylabel('Quantity of Inter Transmissions');
title('(g)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(338);
histogram(timeValues8, binEdges)
xlabel('Inter Transmission in Seconds');
ylabel('Quantity of Inter Transmissions');
title('(h)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(339);
histogram(timeValues9, binEdges)
xlabel('Inter Transmission in Seconds');
ylabel('Quantity of Inter Transmissions');
title('(i)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);



