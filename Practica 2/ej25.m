function [  ] = ej25(  )
    
    video = VideoReader('BigBang.mp4');
    videoread = read(video);
    %We get all the frames that has the video to traverse it.
    nFrames = get(video,'NumberOfFrames');
    
    %This is the filter that we are going to use.
    h = fspecial('gaussian', 15, 10);
    
    %We create a new video in order to save the filtered frames of the
    %original video in this file.
    newvideo = VideoWriter('newBB.mp4','MPEG-4');
    %Video opened to edit
    open(newvideo);
    %Reading frame by frame
    for k = 1 : nFrames
        %Reading the current frame
        currentFrame = read(video,k);
        %Applying filter to a frame 
        frameFilter = imfilter(currentFrame,h);
        %Adding the filtered frame to the new video (frame by frame)
        writeVideo(newvideo,frameFilter);
    end
    close(newvideo);
    implay('newBB.mp4');
end