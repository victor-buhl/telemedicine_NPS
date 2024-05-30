filepath1 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath2 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath3 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath4 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath5 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath6 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath7 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath8 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'
filepath9 = 'C:\Users\victo\OneDrive\Desktop\NPS Classes\Theses Folder\project_test\rate_test.csv'


data = readtable(filepath1); % If the file has headers, use readtable instead

%time = data{:, 1}; % First column
measurements1a = data{:, 2}; % Second column
measurements2a = data{:, 3}; % Third column

data = readtable(filepath2); % If the file has headers, use readtable instead

%time = data{:, 1}; % First column
measurements1b = data{:, 2}; % Second column
measurements2b = data{:, 3}; % Third column

data = readtable(filepath3); % If the file has headers, use readtable instead

%time = data{:, 1}; % First column
measurements1c = data{:, 2}; % Second column
measurements2c = data{:, 3}; % Third column

data = readtable(filepath4); % If the file has headers, use readtable instead

%time = data{:, 1}; % First column
measurements1d = data{:, 2}; % Second column
measurements2d = data{:, 3}; % Third column

data = readtable(filepath5); % If the file has headers, use readtable instead

time = data{:, 1}; % First column
measurements1e = data{:, 2}; % Second column
measurements2e = data{:, 3}; % Third column

data = readtable(filepath6); % If the file has headers, use readtable instead

%time = data{:, 1}; % First column
measurements1f = data{:, 2}; % Second column
measurements2f = data{:, 3}; % Third column

data = readtable(filepath7); % If the file has headers, use readtable instead

%time = data{:, 1}; % First column
measurements1g = data{:, 2}; % Second column
measurements2g = data{:, 3}; % Third column

data = readtable(filepath8); % If the file has headers, use readtable instead

%time = data{:, 1}; % First column
measurements1h = data{:, 2}; % Second column
measurements2h = data{:, 3}; % Third column

data = readtable(filepath9); % If the file has headers, use readtable instead

%time = data{:, 1}; % First column
measurements1i = data{:, 2}; % Second column
measurements2i = data{:, 3}; % Third column

%plot(time, measurements1a, 'r'); % Plot the first set of measurements in red
%hold on;                         % Hold on to plot the second set on the same figure
%plot(time, measurements2a, 'b'); % Plot the second set of measurements in blue
%hold off;

% Optional: Add labels and title
%xlabel('Time');
%ylabel('Measurements');
%title('Measurements Over Time');
%legend('Measurements 1', 'Measurements 2');

% Assuming measurement1a, measurement1b, ..., measurement1f are defined
maxLength = max([length(measurements1a), length(measurements1b), length(measurements1c), length(measurements1d), length(measurements1e), length(measurements1f), length(measurements1g), length(measurements1h), length(measurements1i)]);

measurements1a(maxLength) = 0;
measurements1b(maxLength) = 0;
measurements1c(maxLength) = 0;
measurements1d(maxLength) = 0;
measurements1e(maxLength) = 0;
measurements1f(maxLength) = 0;
measurements1g(maxLength) = 0;
measurements1h(maxLength) = 0;
measurements1i(maxLength) = 0;

% Assuming time and measurement1, measurement2, ..., measurement6 are defined
measurementsMatrix = [measurements1a, measurements1b, measurements1c, measurements1d, measurements1e, measurements1f, measurements1g, measurements1h, measurements1i];

measurements2a(maxLength) = 0;
measurements2b(maxLength) = 0;
measurements2c(maxLength) = 0;
measurements2d(maxLength) = 0;
measurements2e(maxLength) = 0;
measurements2f(maxLength) = 0;
measurements2g(maxLength) = 0;
measurements2h(maxLength) = 0;
measurements2i(maxLength) = 0;

% Assuming time and measurement1, measurement2, ..., measurement6 are defined
measurementsMatrix2 = [measurements2a, measurements2b, measurements2c, measurements2d, measurements2e, measurements2f, measurements2g, measurements2h, measurements2i];


% Create a figure and plot each set of measurements in a subplot
figure;
for i = 1:9
    subplot(3, 3, i); % 2x3 grid, position i
    p1 = plot(time, measurementsMatrix(:, i));
    hold on;  
    p2 = plot(time, measurementsMatrix2(:, i));
    hold off;
    xlabel('Time in seconds');
    ylabel(['Bits per second ']);

    if i == 1
        title('(a)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);
            % Set x-axis and y-axis limits
    elseif i == 2
        title('(b)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);
            % Set x-axis and y-axis limits
    elseif i == 3
        title('(c)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);
    elseif i == 4
        title('(d)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);
    elseif i == 5
        title('(e)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);
    elseif i == 6
        title('(f)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);
    elseif i == 7
        title('(g)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);
    elseif i == 8
        title('(h)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);
    else
        title('(i)', 'FontSize', 14, 'Units', 'normalized', 'Position', [0.5, -0.45, 0]);
    end
    xlim([0 365]);
    ylim([0 3e6]); % 3e6 is 3x10^6

    legend([p1, p2], 'Upload', 'Download'); % Add a legend
end

