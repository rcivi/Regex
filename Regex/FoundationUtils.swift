//===--- FoundationUtils.swift --------------------------------------------===//
//Copyright (c) 2016 Daniel Leping (dileping)
//
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//
//http://www.apache.org/licenses/LICENSE-2.0
//
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.
//===----------------------------------------------------------------------===//

#if !os(Linux)
    //here we use NSRegularExpression
    import Foundation
    
    extension NSRange {
        func toStringRange(source:String) -> StringRange {
            let start = source.startIndex.advancedBy(self.location)
            return StringRange(start: start, end: start.advancedBy(self.length))
        }
    }
    extension Range where Element: SignedIntegerType  {
        func toStringRange(source:String) -> StringRange {
            let start = source.startIndex.advancedBy(self.startIndex as! Int)
            return StringRange(start: start, end: source.startIndex.advancedBy(self.endIndex as! Int))
        }
    }

#endif