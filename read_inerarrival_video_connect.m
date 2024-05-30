file_name = 'time_stamp_test_now.csv';
fid = fopen(file_name, 'r');  % Open the file for reading

desiredLineNumber1 = 1;  % Example line number
desiredLineNumber2 = 1;  % Example line number
desiredLineNumber3 = 1;  % Example line number
desiredLineNumber4 = 4;  % Example line number
desiredLineNumber5 = 4;  % Example line number
desiredLineNumber6 = 4;  % Example line number
desiredLineNumber7 = 4;  % Example line number
desiredLineNumber8 = 4;  % Example line number
desiredLineNumber9 = 4;  % Example line number

counter = 1;
while ~feof(fid) && counter <= desiredLineNumber1 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber1
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
%    elseif counter == desiredLineNumber + 1
%        values = split(line, ',');
%        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues1 = diff(timeValues);
timeValues1 = timeValues(2:end);

fclose(fid);  % Close the file

A1 = numericValues1;
% Find NaN elements
nanElements = isnan(A1);

% Count the number of NaN elements
%numberOfNaNs = sum(nanElements)
%A(isnan(A))=0;
fid = fopen(file_name, 'r');  % Open the file for reading
counter = 1;
while ~feof(fid) && counter <= desiredLineNumber2 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber2
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
%    elseif counter == desiredLineNumber + 1
%        values = split(line, ',');
%        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues2 = diff(timeValues);
timeValues2 = timeValues(2:end);

fclose(fid);  % Close the file

A2 = numericValues2;
% Find NaN elements
nanElements = isnan(A2);

% Count the number of NaN elements
numberOfNaNs = sum(nanElements)
A2(isnan(A2))=0;
fid = fopen(file_name, 'r');  % Open the file for reading
counter = 1;
while ~feof(fid) && counter <= desiredLineNumber3 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber3
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
%    elseif counter == desiredLineNumber + 1
%        values = split(line, ',');
%        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues3 = diff(timeValues);
timeValues3 = timeValues(2:end);

fclose(fid);  % Close the file

A3 = numericValues3;
% Find NaN elements

% Count the number of NaN elements
A3(isnan(A3))=0;
fid = fopen(file_name, 'r');  % Open the file for reading
counter = 1;
while ~feof(fid) && counter <= desiredLineNumber4 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber4
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
%    elseif counter == desiredLineNumber + 1
%        values = split(line, ',');
%        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues4 = diff(timeValues);
timeValues4 = timeValues(2:end);

fclose(fid);  % Close the file

A4 = numericValues4;
% Find NaN elements
nanElements = isnan(A4);

% Count the number of NaN elements
numberOfNaNs = sum(nanElements)
A4(isnan(A4))=0;
fid = fopen(file_name, 'r');  % Open the file for reading
counter = 1;
while ~feof(fid) && counter <= desiredLineNumber5 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber5
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
%    elseif counter == desiredLineNumber + 1
%        values = split(line, ',');
%        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues5 = diff(timeValues);
timeValues5 = timeValues(2:end);

fclose(fid);  % Close the file

A5 = numericValues5;
% Find NaN elements
nanElements = isnan(A5);

% Count the number of NaN elements
numberOfNaNs = sum(nanElements)
A5(isnan(A5))=0;
fid = fopen(file_name, 'r');  % Open the file for reading
counter = 1;
while ~feof(fid) && counter <= desiredLineNumber6 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber6
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
%    elseif counter == desiredLineNumber + 1
%        values = split(line, ',');
%        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues6 = diff(timeValues);
timeValues6 = timeValues(2:end);

fclose(fid);  % Close the file

A6 = numericValues6;
% Find NaN elements
nanElements = isnan(A6);

% Count the number of NaN elements
numberOfNaNs = sum(nanElements)
A6(isnan(A6))=0;
fid2 = fopen(file_name, 'r');  % Open the file for reading
counter = 1;
while ~feof(fid2) && counter <= desiredLineNumber7 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber7
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
%    elseif counter == desiredLineNumber + 1
%        values = split(line, ',');
%        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues7 = diff(timeValues);
timeValues7 = timeValues(2:end);

fclose(fid2);  % Close the file

A7 = numericValues7;
% Find NaN elements
nanElements = isnan(A7);

% Count the number of NaN elements
numberOfNaNs = sum(nanElements)
A7(isnan(A7))=0;
fid2 = fopen(file_name, 'r');  % Open the file for reading
counter = 1;
while ~feof(fid2) && counter <= desiredLineNumber8 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber8
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
%    elseif counter == desiredLineNumber + 1
%        values = split(line, ',');
%        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues8 = diff(timeValues);
timeValues8 = timeValues(2:end);

fclose(fid2);  % Close the file

A8 = numericValues8;
% Find NaN elements
nanElements = isnan(A8);

% Count the number of NaN elements
numberOfNaNs = sum(nanElements)
A8(isnan(A8))=0;

fid2 = fopen(file_name, 'r');  % Open the file for reading
counter = 1;
while ~feof(fid2) && counter <= desiredLineNumber9 + 1
    line = fgetl(fid);
    if counter == desiredLineNumber9
        values = split(line, ',');
        timeValues = str2double(values(2:end));  % Assuming the first column is text
%    elseif counter == desiredLineNumber + 1
%        values = split(line, ',');
%        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

numericValues9 = diff(timeValues);
timeValues9 = timeValues(2:end);

fclose(fid2);  % Close the file

A9 = numericValues9;
% Find NaN elements
nanElements = isnan(A9);

% Count the number of NaN elements
numberOfNaNs = sum(nanElements)
A9(isnan(A9))=0;

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

binEdges = [0:.001:.04];
fig1 = figure();
subplot(331);
histogram(A1, binEdges)
xlim([0 .04]);
xlabel('Inter Arrival in Seconds');
ylabel('Quantity of Inter Arrivals');
title('(a)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(332);
histogram(A2, binEdges)
xlim([0 .04]);
xlabel('Inter Arrival in Seconds');
ylabel('Quantity of Inter Arrivals');
title('(b)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(333);
histogram(A3, binEdges)
xlim([0 .04]);
xlabel('Inter Arrival in Seconds');
ylabel('Quantity of Inter Arrivals');
title('(c)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(334);
histogram(A4, binEdges)
xlim([0 .04]);
xlabel('Inter Arrival in Seconds');
ylabel('Quantity of Inter Arrivals');
title('(d)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(335);
histogram(A5, binEdges)
xlim([0 .04]);
xlabel('Inter Arrival in Seconds');
ylabel('Quantity of Inter Arrivals');
title('(e)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(336);
histogram(A6, binEdges)
xlim([0 .04]);
xlabel('Inter Arrival in Seconds');
ylabel('Quantity of Inter Arrivals');
title('(f)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(337);
histogram(A7, binEdges)
xlim([0 .04]);
xlabel('Inter Arrival in Seconds');
ylabel('Quantity of Inter Arrivals');
title('(g)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(338);
histogram(A8, binEdges)
xlim([0 .04]);
xlabel('Inter Arrival in Seconds');
ylabel('Quantity of Inter Arrivals');
title('(h)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(339);
histogram(A9, binEdges)
xlim([0 .04]);
xlabel('Inter Arrival in Seconds');
ylabel('Quantity of Inter Arrivals');
title('(i)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

%[varian, timevar] = slidingWindowVariance(A, timeValues,1000);
%[avg, timemean] = slidingWindowMean(A, timeValues,1000);
%x = 1:length(varian);

%timevar = timevar - min(timevar);
%timemean = timemean - min(timemean);

% Define new evenly spaced time indices
% create a time vector from the minimum to the maximum of the original timestamps with a fixed interval
%new_time_stamps_v = min(timevar):0.1:max(timevar); % Change 0.1 to your desired interval

% Interpolate measurements to these new time indices
%new_measurements_v = interp1(timevar, varian, new_time_stamps_v, 'linear'); % 'linear' can be replaced with other methods like 'spline', 'nearest', etc.

% create a time vector from the minimum to the maximum of the original timestamps with a fixed interval
%new_time_stamps_m = min(timevar):0.1:max(timevar); % Change 0.1 to your desired interval

% Interpolate measurements to these new time indices
%new_measurements_m = interp1(timemean, avg, new_time_stamps_m, 'linear'); % 'linear' can be replaced with other methods like 'spline', 'nearest', etc.

%p = polyfit(time2, varian, 6);

%y_fit = polyval(p, time2); % Evaluates the polynomial at the x_fit points
%new_measurements_v(1:80)=[];
%new_time_stamps_v(1:80)=[];
%fig2 = figure();
%scatter(new_time_stamps_v, new_measurements_v)
%plot(time2, varian, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'b')
%hold on;
%plot(time2, y_fit, 'r-', 'LineWidth', 2);
% Add labels and legend
%xlabel('Time of stream in seconds');
%ylabel('Variance in seconds squared');
%title('Variance in 1000 sample increments');
%legend('Data Points', 'Best Fit Line', 'Location', 'best');

%y_fit = polyval(p, time2); % Evaluates the polynomial at the x_fit points
%new_measurements_std = sqrt(new_measurements_v);
%new_time_stamps_std = new_time_stamps_v;
%fig2 = figure();
%scatter(new_time_stamps_std, new_measurements_std)
%plot(time2, varian, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'b')
%hold on;
%plot(time2, y_fit, 'r-', 'LineWidth', 2);
% Add labels and legend
%xlabel('Time of stream in seconds');
%ylabel('Standard deviation in seconds');
%title('Standard deviation in 1000 sample increments');
%legend('Data Points', 'Best Fit Line', 'Location', 'best');



%new_measurements_m(1:80)=[];
%new_time_stamps_m(1:80)=[];
%fig3 = figure();
%scatter(new_time_stamps_m, new_measurements_m)
%xlabel('Time of stream in seconds');
%ylabel('Mean in seconds');
%title('Mean in 1000 sample increments');

