function craterWindow(vertex,face, txtFile)

%get values

load(txtFile);
craterData = dlmread(txtFile);

figure;
plot_mesh(vertex,face);
shading interp;
hold on;

    for i= 1: length(craterData)
        xaxis        = craterData(i,2);
        yaxis        = craterData(i,3);
        zaxis        = craterData(i,4);
        radius       = craterData(i,5);

        % crop the mesh around the coordinates
        %     ...
        %     ...
        %
        plot3(xaxis,yaxis,zaxis,'.');
        hold on
        Cube = [xaxis yaxis zaxis radius+10]
        drawCube(Cube);
        %%TRI = delaunay(xaxis,yaxis.zaxis);
        myPatch     = patch(xaxis,yaxis,zaxis,'red');
        myPolygon   = patch('Faces',face,'Vertices',vertex);
        bound       = boundary(xaxis,yaxis,zaxis);

        %[xaxis,yaxis,zaxis] = sphere;
        %surf(xaxis*radius,yaxis*radius,zaxis*radius);
        % axis equal
        % hold on

    end

end

