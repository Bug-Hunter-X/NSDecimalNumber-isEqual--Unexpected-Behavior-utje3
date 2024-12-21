A more reliable approach is to use `compare:` method of `NSDecimalNumber`, which returns an `NSComparisonResult` indicating the relative order of the two numbers, effectively handling small differences that `isEqual:` might misinterpret.

```objectivec
NSDecimalNumber *num1 = [NSDecimalNumber decimalNumberWithString:@