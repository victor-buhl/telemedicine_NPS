fid = fopen('payload_Day1.csv', 'r');  % Open the file for reading

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
%    elseif counter == desiredLineNumber + 1
%        values = split(line, ',');
%        timeValues = str2double(values(2:end));  % Assuming the first column is text
    end
    counter = counter + 1;
end

fclose(fid);  % Close the file

A1 = timeValues;
% Find NaN elements
nanElements = isnan(A1);

% Count the number of NaN elements
numberOfNaNs = sum(nanElements)
%A1(isnan(1A))=0;
fid = fopen('payload_Day1.csv', 'r');  % Open the file for reading
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

fclose(fid);  % Close the file

A2 = timeValues;
% Find NaN elements
nanElements = isnan(A2);

% Count the number of NaN elements
numberOfNaNs = sum(nanElements)
A2(isnan(A2))=0;
fid = fopen('payload_Day1.csv', 'r');  % Open the file for reading
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

fclose(fid);  % Close the file

A3 = timeValues;
% Find NaN elements
%nanElements = isnan(A);

% Count the number of NaN elements
numberOfNaNs = sum(nanElements)
A3(isnan(A3))=0;
fid = fopen('payload_Day1.csv', 'r');  % Open the file for reading
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

fclose(fid);  % Close the file

A4 = timeValues;
% Find NaN elements
nanElements = isnan(A4);

% Count the number of NaN elements
numberOfNaNs = sum(nanElements)
A4(isnan(A4))=0;
fid = fopen('payload_Day1.csv', 'r');  % Open the file for reading
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

fclose(fid);  % Close the file

A5 = timeValues;
% Find NaN elements
nanElements = isnan(A5);

% Count the number of NaN elements
numberOfNaNs = sum(nanElements)
A5(isnan(A5))=0;
fid = fopen('payload_Day1.csv', 'r');  % Open the file for reading
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

fclose(fid);  % Close the file

A6 = timeValues;
% Find NaN elements
nanElements = isnan(A6);

% Count the number of NaN elements
numberOfNaNs = sum(nanElements)
A6(isnan(A6))=0;
fid2 = fopen('payload_Day2.csv', 'r');  % Open the file for reading
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

fclose(fid2);  % Close the file

A7 = timeValues;
% Find NaN elements
nanElements = isnan(A7);

% Count the number of NaN elements
numberOfNaNs = sum(nanElements)
A7(isnan(A7))=0;
fid2 = fopen('payload_Day2.csv', 'r');  % Open the file for reading
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

fclose(fid2);  % Close the file

A8 = timeValues;
% Find NaN elements
nanElements = isnan(A8);

% Count the number of NaN elements
numberOfNaNs = sum(nanElements)
A8(isnan(A8))=0;

fid2 = fopen('payload_Day2.csv', 'r');  % Open the file for reading
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

fclose(fid2);  % Close the file

A9 = timeValues;
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

binEdges = [0:50:1400];
fig1 = figure();
subplot(331);
histogram(A1, binEdges)
xlabel('Payload size in bytes');
ylabel('Quantity of Payloads');
title('(a)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(332);
histogram(A2, binEdges)
xlabel('Payload size in bytes');
ylabel('Quantity of Payloads');
title('(b)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(333);
histogram(A3, binEdges)
xlabel('Payload size in bytes');
ylabel('Quantity of Payloads');
title('(c)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(334);
histogram(A4, binEdges)
xlabel('Payload size in bytes');
ylabel('Quantity of Payloads');
title('(d)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(335);
histogram(A5, binEdges)
xlabel('Payload size in bytes');
ylabel('Quantity of Payloads');
title('(e)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(336);
histogram(A6, binEdges)
xlabel('Payload size in bytes');
ylabel('Quantity of Payloads');
title('(f)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(337);
histogram(A7, binEdges)
xlabel('Payload size in bytes');
ylabel('Quantity of Payloads');
title('(g)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(338);
histogram(A8, binEdges)
xlabel('Payload size in bytes');
ylabel('Quantity of Payloads');
title('(h)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);

subplot(339);
histogram(A9, binEdges)
xlabel('Payload size in bytes');
ylabel('Quantity of Payloads');
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

