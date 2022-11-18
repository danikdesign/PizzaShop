def parse_orders_input orders_input
  s1 = orders_input.split(',')
  hh = {}

  s1.each do |x|
    s2 = x.split('=')
    s3 = s2[0].split('_')

    hh[s3[1]] =
    cnt =

    arr2 = [id, cnt]

    arr.push arr2
  end

  return arr
end

input = "0product_1=3,product_2=1,product_3=8,"

p parse_orders_input input