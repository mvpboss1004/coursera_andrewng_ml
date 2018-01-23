function dummy = dummyvar(y)
  a = y(:);
  una = unique(a);
  dummymap = Map(una, 1:size(una,1));
  dummy = zeros(size(a,1), size(una,1));
  for i = 1:size(a,1)
    dummy(i, dummymap(a(i))) = 1;
  end
end