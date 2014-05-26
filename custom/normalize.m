function out = normalize(x, dim)

    if isvector(x)
        out = (x-mean(x)) / std(x);
        return;
    end

    dimCheck = nargin > 2 && dim ~= 1;

    if dimCheck
        x = x';
    end

    out = bsxfun(@minus, x, mean(x, 1));
    out = bsxfun(@rdivide, out, std(x));

    if dimCheck
        out = out';
    end

end