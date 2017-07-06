Calculate Your BMI
========================================================
author: Manoj Gupta     
date: 07/05/2017
autosize: true

What is BMI
========================================================
The body mass index (BMI) or Quetelet index is a value derived from the mass (weight) and height of an individual. 
it is universally expressed in units of kg/m2, resulting from mass in kilograms and height in metres:

<table><thead>
<tr>
<th>Category</th>
<th>BMI (kg/m2)</th>
</tr>
</thead><tbody>
<tr>
<td>Severely underweight</td>
<td>BMI <16</td>
</tr>
<tr>
<td>underweight</td>
<td>BMI [16.1 - 18.4]</td>
</tr>
</tr>
<tr>
<td>Normal weight</td>
<td>BMI [18.5-24.9]</td>
</tr>
</tr>
<tr>
<td>Overweight</td>
<td>BMI [25-29.9]</td>
</tr>
</tr>
<tr>
<td>Obesity</td>
<td>BMI >=30</td>
</tr>
</tr>
</tbody></table>

BMI Calculation
========================================================

The formula to calculate BMI : weight(kg) / height(metres)2

Below is an example of how is BMI calculated


```r
weight = 75
height = 1.9
BMI <- weight/height^2
BMI
```

```
[1] 20.77562
```

Code in Action
========================================================

For example if a person's (weight=90 kg and height=1.9 m) his BMI would be




```r
BMI_fun<-function(weight,height){
        BMI_value<-weight/(height^2)
        ifelse(BMI_value<=16,"Severely underweight"
               ,ifelse(BMI_value<18.5,"underweight"
                       ,ifelse(BMI_value<25,"normal weight"
                               ,ifelse(BMI_value<30,"overweight","obesity"
        ))))
}

BMI_fun(90, 1.9)
```

```
[1] "normal weight"
```

Conclusion
========================================================

A frequent use of the BMI is to assess how much an individual's body weight departs from what is normal or desirable for a person's height. The weight excess or deficiency may, in part, be accounted for by body fat (adipose tissue) although other factors such as muscularity also affect BMI significantly
